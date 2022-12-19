import 'package:get/get.dart';
import 'package:mobile_pos/data/model/sale.dart';
import 'package:mobile_pos/data/request/sale_request.dart';
import 'package:mobile_pos/data/response/sale_response.dart';

import '../services/remote/api_service.dart';

abstract class SaleRepository {
  Stream<Sale?> addSale(SalesRequest request);
}

class SaleRepositoryImpl implements SaleRepository {
  static final SaleRepositoryImpl _singleton = SaleRepositoryImpl._internal();
  SaleRepositoryImpl._internal();
  factory SaleRepositoryImpl() => _singleton;

  final APIService remote = Get.find<APIService>();

  @override
  Stream<Sale?> addSale(SalesRequest request) async* {
    var response = await remote.addToSaleInvocie(request);
    print(request);
    if (response is SaleResponseSuccess) {
      yield response.saleData;
    }
    if (response is SaleResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is SaleResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }
}
