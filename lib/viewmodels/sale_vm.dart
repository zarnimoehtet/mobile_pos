import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/data/model/sale.dart';
import 'package:mobile_pos/data/repositories/sale_repo.dart';
import 'package:mobile_pos/data/request/sale_request.dart';

import '../core/helpers/state.dart';
import '../data/model/item.dart';

class SaleViewModel {
  static final SaleViewModel _singleton = SaleViewModel._internal();
  factory SaleViewModel() => _singleton;
  SaleViewModel._internal() {
    addSaleStream = _addSaleStateController.stream;
  }

  final SaleRepository _saleRepo = Get.find();

  final StreamController<MyState<Sale?>> _addSaleStateController =
      StreamController<MyState<Sale?>>.broadcast();
  late Stream<MyState<Sale?>> addSaleStream;
  StreamSubscription? _addSaleSubscription;

  void addNewSale(
      String ownerId,
      String empId,
      String? customerId,
      int reducePrice,
      String hasCredit,
      int creditAmount,
      int totalAmount,
      String paymentType,
      String status,
      List<Item> itemList) async {
    _addSaleStateController.sink.add(MyState.loading());

    try {
      List<SaleReqItem> list = [];
      for (var s in itemList) {
        SaleReqItem item = SaleReqItem(s.id, s.isStock, s.isDiscount, s.count,
            s.discountType, s.discount ?? 0, s.discount ?? 0, s.price, s.price);
        list.add(item);
      }
      var addNewSale = SalesRequest(ownerId, empId, customerId, reducePrice,
          hasCredit, creditAmount, totalAmount, paymentType, status, list);
      _addSaleSubscription?.cancel();
      _addSaleSubscription = _saleRepo
          .addSale(addNewSale)
          .handleError(
              (e) => _addSaleStateController.sink.add(MyState.failed(e)))
          .listen((cate) =>
              _addSaleStateController.sink.add(MyState.success(cate)));
    } on DioError catch (e) {
      _addSaleStateController.sink.add(MyState.failed(e.message));
    } catch (e) {
      _addSaleStateController.sink.add(MyState.failed(e));
    }
  }
}
