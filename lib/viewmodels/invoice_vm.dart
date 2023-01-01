import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../core/helpers/state.dart';
import '../core/helpers/throwif.dart';
import '../data/model/sale.dart';
import '../data/repositories/invoice_repo.dart';

class InvoiceViewModel {
  static final InvoiceViewModel _singleton = InvoiceViewModel._internal();
  factory InvoiceViewModel() => _singleton;
  InvoiceViewModel._internal() {
    invoiceListStream = _invoiceListController.stream;
    fetchInvoiceStream = _fetchInvoiceController.stream;
  }

  final InvoiceRepository _invoiceRepository = Get.find();

//LISTING
  final StreamController<List<Invoice>> _invoiceListController =
      StreamController<List<Invoice>>.broadcast();
  late Stream<List<Invoice>> invoiceListStream;

  StreamSubscription? invoiceListSubscription;
  void subscribeInvoice() {
    invoiceListSubscription?.cancel();
    invoiceListSubscription = _invoiceRepository
        .subscribeInvoice()
        .handleError(_invoiceListController.sink.addError)
        .listen(_invoiceListController.sink.add);
  }

  final StreamController<MyState<List<Invoice>>> _fetchInvoiceController =
      StreamController<MyState<List<Invoice>>>.broadcast();
  late Stream<MyState<List<Invoice>>> fetchInvoiceStream;

  Future fetchInvoice(int page, String id) async {
    try {
      _fetchInvoiceController.sink.add(MyState.loading());
      var list = await _invoiceRepository.fetchInvoiceList(page, id);
      throwif(list.isEmpty, "no_invoice_found".tr);
      _fetchInvoiceController.sink.add(MyState.success(list));
    } on DioError catch (e) {
      _fetchInvoiceController.sink.add(MyState.failed(e.message));
    } catch (e) {
      _fetchInvoiceController.sink.add(MyState.failed(e));
    }
  }
}
