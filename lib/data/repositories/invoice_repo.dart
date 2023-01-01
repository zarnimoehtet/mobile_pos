import 'package:get/get.dart';
import 'package:mobile_pos/data/model/sale.dart';
import 'package:mobile_pos/data/response/sale_response.dart';
import 'package:mobile_pos/data/services/local/local_invoice_service.dart';

import '../services/remote/api_service.dart';

abstract class InvoiceRepository {
  Stream<List<Invoice>> subscribeInvoice();
  Future<List<Invoice>> fetchInvoiceList(int page, String ownerId);
}

class InvoiceRepositoryImpl implements InvoiceRepository {
  static final InvoiceRepositoryImpl _singleton =
      InvoiceRepositoryImpl._internal();
  InvoiceRepositoryImpl._internal();
  factory InvoiceRepositoryImpl() => _singleton;

  final APIService remote = Get.find<APIService>();
  final LocalInvoiceService local = Get.find();

  @override
  Future<List<Invoice>> fetchInvoiceList(int page, String ownerId) async {
    var response = await remote.loadInvoiceList(ownerid: ownerId);
    if (response is SaleListResponseSuccess) {
      if (page == 0) {
        await local.clearInvoice();
      }
      await local.saveInvoice(response.saleList);
      return local.getAllInvoice(ownerId);
    } else if (response is SaleListResponseFail) {
      if (response.saleList.isEmpty) {
        await local.clearInvoice();
      }
      await local.saveInvoice(response.saleList);
      return local.getAllInvoice(ownerId);
    } else {
      throw response.message ?? "";
    }
  }

  @override
  Stream<List<Invoice>> subscribeInvoice() {
    return local.subscribeInvoice();
  }
}
