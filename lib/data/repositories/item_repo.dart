import 'package:get/get.dart';
import 'package:mobile_pos/data/model/item.dart';
import 'package:mobile_pos/data/response/item_response.dart';
import 'package:mobile_pos/data/response/sku_response.dart';
import 'package:mobile_pos/data/services/local/local_item_service.dart';

import '../request/item_add_request.dart';
import '../services/remote/api_service.dart';

abstract class ItemRepository {
  Stream<ItemRes> addItem(ItemAddRequest request);

  Stream<List<Item>> subscribeItem();
  Future<List<Item>> fetchItemList(int page, String ownerId,
      {String? categoryid});
  Stream<ItemRes> updateItem(String itemId, ItemAddRequest request);
  Future deleteItem(String id);

  Stream<String> generateSKU(String ownerId);
}

class ItemRepositoryImpl implements ItemRepository {
  static final ItemRepositoryImpl _singleton = ItemRepositoryImpl._internal();
  ItemRepositoryImpl._internal();
  factory ItemRepositoryImpl() => _singleton;

  final APIService remote = Get.find<APIService>();
  final LocalItemService local = Get.find();
  @override
  Stream<ItemRes> addItem(ItemAddRequest request) async* {
    var response = await remote.addItem(request);
    if (response is ItemAddResponseSuccess) {
      yield response.item;
    }
    if (response is ItemAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is ItemAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future<List<Item>> fetchItemList(int page, String ownerId,
      {String? categoryid}) async {
    var response =
        await remote.loadItemList(ownerid: ownerId, categoryId: categoryid);
    if (response is ItemListResponseSuccess) {
      if (page == 0) {
        await local.clearItem();
      }
      await local.saveItem(response.itemList);
      return local.getAllItem(ownerId);
    } else if (response is ItemListResponseFail) {
      if (response.itemList.isEmpty) {
        await local.clearItem();
      }
      await local.saveItem(response.itemList);
      return local.getAllItem(ownerId);
    } else {
      throw response.message ?? "";
    }
  }

  @override
  Stream<List<Item>> subscribeItem() {
    return local.subscribeItem();
  }

  @override
  Stream<ItemRes> updateItem(String unitId, ItemAddRequest request) async* {
    var response = await remote.updateItem(unitId, request);
    if (response is ItemAddResponseSuccess) {
      yield response.item;
    }
    if (response is ItemAddResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is ItemAddResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }

  @override
  Future deleteItem(String id) async {
    var response = await remote.deleteItem(id);
    if (response is ItemDeleteResponseSuccess) {
      await local.deleteItem(id);
    } else {
      throw response.message ?? "Something is wrong";
    }
  }

  @override
  Stream<String> generateSKU(String ownerId) async* {
    var response = await remote.generateSKU(ownerid: ownerId);
    if (response is SKUResponseSuccess) {
      yield response.data ?? "";
    }
    if (response is SKUResponseError) {
      throw response.message ?? "Something go wrong";
    }
    if (response is SKUResponseFail) {
      throw response.message ?? "Something go wrong";
    }
  }
}
