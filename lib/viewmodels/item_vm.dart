import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/enums/representation.dart';
import 'package:mobile_pos/data/request/item_add_request.dart';
import 'package:mobile_pos/modules/items/model/item_photo.dart';

import '../core/helpers/state.dart';
import '../core/helpers/throwif.dart';
import '../data/model/item.dart';
import '../data/repositories/file_repo.dart';
import '../data/repositories/item_repo.dart';

class ItemViewModel {
  static final ItemViewModel _singleton = ItemViewModel._internal();
  factory ItemViewModel() => _singleton;
  ItemViewModel._internal() {
    addItemStream = _addItemStateController.stream;
    itemListStream = _unitListController.stream;
    fetchItemStream = _fetchItemController.stream;
    editItemStream = _editItemStateController.stream;
    deleteItemStateStream = _deleteItemStateController.stream;
    generateSKUStateStream = _generateSKUStateController.stream;
  }

  final ItemRepository _itemRepository = Get.find();
  final FileRepository _fileRepo = Get.find();
//LISTING
  final StreamController<List<Item>> _unitListController =
      StreamController<List<Item>>.broadcast();
  late Stream<List<Item>> itemListStream;

  StreamSubscription? itemListSubscription;
  void subscribeItem() {
    itemListSubscription?.cancel();
    itemListSubscription = _itemRepository
        .subscribeItem()
        .handleError(_unitListController.sink.addError)
        .listen(_unitListController.sink.add);
  }

  final StreamController<MyState<List<Item>>> _fetchItemController =
      StreamController<MyState<List<Item>>>.broadcast();
  late Stream<MyState<List<Item>>> fetchItemStream;

  Future fetchItem(int page, String id) async {
    try {
      _fetchItemController.sink.add(MyState.loading());
      var list = await _itemRepository.fetchItemList(page, id);
      throwif(list.isEmpty, "no_item_found".tr);
      _fetchItemController.sink.add(MyState.success(list));
    } on DioError catch (e) {
      _fetchItemController.sink.add(MyState.failed(e.message));
    } catch (e) {
      _fetchItemController.sink.add(MyState.failed(e));
    }
  }

  //ADD NEW
  final StreamController<MyState<ItemRes>> _addItemStateController =
      StreamController<MyState<ItemRes>>.broadcast();
  late Stream<MyState<ItemRes>> addItemStream;
  StreamSubscription? _addItemSubscription;

  void addNewItem(
    bool isAds,
    Representation presentationType,
    List<String> shapeAndColor,
    List<ItemPhoto> phots,
    String price,
    String cost,
    String stock,
    String desc,
    String isDiscount,
    String discountType,
    String discount,
    String status,
    String ownerid,
    String name,
    String categoryId,
    String sku,
    String barcode,
    List<Varient> variant,
    String expDate,
    String unitId,
    String isStock,
  ) async {
    _addItemStateController.sink.add(MyState.loading());

    if (name.isEmpty) {
      _addItemStateController.sink.add(MyState.failed("enter_item_name".tr));
    } else if (price.isEmpty) {
      _addItemStateController.sink.add(MyState.failed("enter_item_price".tr));
    } else if (cost.isEmpty) {
      _addItemStateController.sink.add(MyState.failed("enter_item_cost".tr));
    } else if (sku.isEmpty) {
      _addItemStateController.sink.add(MyState.failed("enter_item_sku".tr));
    } else if (categoryId.isEmpty) {
      _addItemStateController.sink
          .add(MyState.failed("enter_item_category".tr));
    } else if (unitId.isEmpty) {
      _addItemStateController.sink.add(MyState.failed("enter_item_unit".tr));
    } else if (isDiscount == "yes" &&
        (discountType.isEmpty || discount.isEmpty)) {
      _addItemStateController.sink
          .add(MyState.failed("enter_item_discount".tr));
    } else if (isStock == "yes" && stock.isEmpty) {
      _addItemStateController.sink.add(MyState.failed("enter_item_stock".tr));
    } else if (isAds && (phots.isEmpty)) {
      _addItemStateController.sink.add(MyState.failed("enter_item_images".tr));
    } else if (!isAds && ((phots.isEmpty) || (shapeAndColor.isEmpty))) {
      _addItemStateController.sink.add(MyState.failed("enter_presentation".tr));
    } else {
      try {
        List<String> imagePaths =
            phots.whereType<ItemPhotoNetwork>().map((e) => e.url).toList();
        List<File> toDoUploadFiles =
            phots.whereType<ItemPhotoFile>().map((e) => e.file).toList();
        if (toDoUploadFiles.isNotEmpty) {
          for (var d in toDoUploadFiles) {
            var filePath = await _fileRepo.uploadOneFile(d);
            imagePaths.add(filePath?.path ?? "");
          }
        }

        PresentationRequest presentationRequest = PresentationRequest(
            isAds ? "ads" : "noads",
            (isAds || presentationType == Representation.image)
                ? imagePaths
                : [],
            presentationType == Representation.shapeAndColor
                ? shapeAndColor
                : []);
        var addNewItem = ItemAddRequest(
            presentationRequest,
            price,
            cost,
            stock,
            desc,
            isDiscount,
            discountType,
            discount,
            status,
            ownerid,
            name,
            categoryId,
            sku,
            barcode,
            variant,
            expDate,
            unitId,
            isStock);
        _addItemSubscription?.cancel();
        _addItemSubscription = _itemRepository
            .addItem(addNewItem)
            .handleError(
                (e) => _addItemStateController.sink.add(MyState.failed(e)))
            .listen((cate) =>
                _addItemStateController.sink.add(MyState.success(cate)));
      } on DioError catch (e) {
        _addItemStateController.sink.add(MyState.failed(e.message));
      } catch (e) {
        _addItemStateController.sink.add(MyState.failed(e));
      }
    }
  }

//UPDATE
  final StreamController<MyState<ItemRes>> _editItemStateController =
      StreamController<MyState<ItemRes>>.broadcast();
  late Stream<MyState<ItemRes>> editItemStream;
  StreamSubscription? _editItemSubscription;

  void editItem(
    bool isAds,
    Representation presentationType,
    List<String> shapeAndColor,
    List<ItemPhoto> phots,
    String price,
    String cost,
    String stock,
    String desc,
    String isDiscount,
    String discountType,
    String discount,
    String status,
    String id,
    String ownerid,
    String name,
    String categoryId,
    String sku,
    String barcode,
    List<Varient> variant,
    String expDate,
    String unitId,
    String isStock,
  ) async {
    _editItemStateController.sink.add(MyState.loading());
    if (name.isEmpty) {
      _addItemStateController.sink.add(MyState.failed("enter_item_name".tr));
    } else if (price.isEmpty) {
      _addItemStateController.sink.add(MyState.failed("enter_item_price".tr));
    } else if (cost.isEmpty) {
      _addItemStateController.sink.add(MyState.failed("enter_item_cost".tr));
    } else if (sku.isEmpty) {
      _addItemStateController.sink.add(MyState.failed("enter_item_sku".tr));
    } else if (categoryId.isEmpty) {
      _addItemStateController.sink
          .add(MyState.failed("enter_item_category".tr));
    } else if (unitId.isEmpty) {
      _addItemStateController.sink.add(MyState.failed("enter_item_unit".tr));
    } else if (isDiscount == "yes" &&
        (discountType.isEmpty || discount.isEmpty)) {
      _addItemStateController.sink
          .add(MyState.failed("enter_item_discount".tr));
    } else if (isStock == "yes" && stock.isEmpty) {
      _addItemStateController.sink.add(MyState.failed("enter_item_stock".tr));
    } else if (isAds && (phots.isEmpty)) {
      _addItemStateController.sink.add(MyState.failed("enter_item_images".tr));
    } else if (!isAds && ((phots.isEmpty) || (shapeAndColor.isEmpty))) {
      _addItemStateController.sink.add(MyState.failed("enter_presentation".tr));
    } else {
      try {
        List<String> imagePaths =
            phots.whereType<ItemPhotoNetwork>().map((e) => e.url).toList();
        List<File> toDoUploadFiles =
            phots.whereType<ItemPhotoFile>().map((e) => e.file).toList();
        if (toDoUploadFiles.isNotEmpty) {
          for (var d in toDoUploadFiles) {
            var filePath = await _fileRepo.uploadOneFile(d);
            imagePaths.add(filePath?.path ?? "");
          }
        }

        PresentationRequest presentationRequest = PresentationRequest(
            isAds ? "ads" : "noads",
            (isAds || presentationType == Representation.image)
                ? imagePaths
                : [],
            presentationType == Representation.shapeAndColor
                ? shapeAndColor
                : []);
        var req = ItemAddRequest(
            presentationRequest,
            price,
            cost,
            stock,
            desc,
            isDiscount,
            discountType,
            discount,
            status,
            ownerid,
            name,
            categoryId,
            sku,
            barcode,
            variant,
            expDate,
            unitId,
            isStock);

        await _editItemSubscription?.cancel();
        _editItemSubscription = _itemRepository
            .updateItem(id, req)
            .handleError((error) =>
                _editItemStateController.sink.add(MyState.failed(error)))
            .listen((cate) =>
                _editItemStateController.sink.add(MyState.success(cate)));
      } catch (e) {
        _editItemStateController.sink.add(MyState.failed(e));
      }
    }
  }

//DELETE
  final StreamController<MyState<bool>> _deleteItemStateController =
      StreamController<MyState<bool>>.broadcast();
  late Stream<MyState<bool>> deleteItemStateStream;

  void deleteItem(String id) {
    _deleteItemStateController.sink.add(MyState.loading());
    _itemRepository.deleteItem(id).then((_) {
      _deleteItemStateController.sink.add(MyState.success(true));
    }).catchError((e) {
      if (e is DioError) {
        _deleteItemStateController.sink.add(MyState.failed(e.message));
      } else {
        _deleteItemStateController.sink.add(MyState.failed(e.toString()));
      }
    });
  }

  //GENERATE SKU
  final StreamController<MyState<String>> _generateSKUStateController =
      StreamController<MyState<String>>.broadcast();
  late Stream<MyState<String>> generateSKUStateStream;
  StreamSubscription? _generateSKUSubscription;

  void generateSKU(String id) async {
    try {
      _generateSKUStateController.sink.add(MyState.loading());
      await _generateSKUSubscription?.cancel();
      _generateSKUSubscription = _itemRepository
          .generateSKU(id)
          .handleError((error) =>
              _generateSKUStateController.sink.add(MyState.failed(error)))
          .listen((data) =>
              _generateSKUStateController.sink.add(MyState.success(data)));
    } catch (e) {
      _generateSKUStateController.sink.add(MyState.failed(e));
    }
  }
}
