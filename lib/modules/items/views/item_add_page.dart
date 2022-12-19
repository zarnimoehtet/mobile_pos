import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shapes/flutter_shapes.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/enums/representation.dart';
import 'package:mobile_pos/data/model/category.dart';
import 'package:mobile_pos/data/model/unit.dart';
import 'package:mobile_pos/modules/items/model/item_photo.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/gradient_button.dart';
import '../../../core/custom/close_icon.dart';
import '../../../core/custom/date_picker_dialog.dart';
import '../../../core/custom/image_pick_dialog.dart';
import '../../../core/custom/place_holder.dart';
import '../../../core/enums/discount_type.dart';
import '../../../core/utils/color_utils.dart';
import '../controllers/items_controller.dart';

class ItemAddPage extends GetView<ItemsController> {
  static const String route = "/item_add";
  const ItemAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.setupEditItem();

    return Scaffold(
        appBar: AppBar(
          title: Text(controller.isEditItem.value ? "Edit Item" : "Add Item"),
          centerTitle: true,
          actions: [
            controller.isEditItem.value
                ? IconButton(
                    onPressed: () {
                      controller.onClickDeleteItem();
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: POSColor.primaryColorDark,
                    ))
                : const SizedBox()
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Obx(
                  () => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Information",
                          style: TextStyle(
                              color: POSColor.primaryColorDark,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: normalInputDecoration(hinttext: "Name"),
                          controller: controller.itemsNameController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                          cursorColor: POSColor.primaryColorDark,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DropdownButtonFormField<Category>(
                          value: controller.selectedCategory.value,
                          isExpanded: true,
                          decoration: normalInputDecoration(
                            hinttext: "Categories (Optional)",
                          ),
                          items: controller.categoryList.map((i) {
                            return DropdownMenuItem<Category>(
                                value: i,
                                child: Text(
                                  i.name ?? "",
                                  style: const TextStyle(
                                    color: POSColor.primaryColorDark,
                                  ),
                                ));
                          }).toList(),
                          onChanged: (v) {
                            controller.selectedCategory.value = v;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DropdownButtonFormField<Unit>(
                          value: controller.selectedUnit.value,
                          isExpanded: true,
                          decoration: normalInputDecoration(
                            hinttext: "Sold By",
                          ),
                          items: controller.unitList.map((i) {
                            return DropdownMenuItem<Unit>(
                                value: i,
                                child: Text(
                                  i.name ?? "",
                                  style: const TextStyle(
                                    color: POSColor.primaryColorDark,
                                  ),
                                ));
                          }).toList(),
                          onChanged: (v) {
                            controller.selectedUnit.value = v;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: normalInputDecoration(hinttext: "Price"),
                          controller: controller.itemsPriceController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          cursorColor: POSColor.primaryColorDark,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: normalInputDecoration(hinttext: "Cost"),
                          controller: controller.itemsCostController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          cursorColor: POSColor.primaryColorDark,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Get.width * 0.7,
                              child: TextFormField(
                                decoration:
                                    normalInputDecoration(hinttext: "SKU"),
                                controller: controller.itemsSKUController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                cursorColor: POSColor.primaryColorDark,
                              ),
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () {
                                controller.generateSKU();
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "AUTO",
                                  style: TextStyle(
                                      color: POSColor.primaryColorDark,
                                      fontSize: 14),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Get.width * 0.7,
                              child: TextFormField(
                                decoration: normalInputDecoration(
                                    hinttext: "Barcode (Optional)"),
                                controller: controller.itemsBarcodeController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                cursorColor: POSColor.primaryColorDark,
                              ),
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () {},
                              child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/images/barcode.png',
                                    width: 40,
                                    color: POSColor.primaryColorDark,
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Get.width * 0.7,
                              child: TextFormField(
                                decoration: normalInputDecoration(
                                    hinttext: "Expired Date (Optional)"),
                                controller: controller.itemsExpDateController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                enabled: false,
                                cursorColor: POSColor.primaryColorDark,
                              ),
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (c) => POSDatePickerDialog(
                                          typeController:
                                              controller.itemsExpDateController,
                                          specialDates: const [],
                                        ));
                              },
                              child: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.calendar_month_sharp,
                                    color: POSColor.primaryColorDark,
                                    size: 30,
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: normalInputDecoration(
                              hinttext: "Description (Optional)"),
                          controller: controller.itemsDescriptionController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          cursorColor: POSColor.primaryColorDark,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        const Text(
                          "Discount",
                          style: TextStyle(
                              color: POSColor.primaryColorDark,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onTap: () {
                            controller.willDiscount.value =
                                !controller.willDiscount.value;
                          },
                          contentPadding: const EdgeInsets.only(
                              left: 10, right: 10, top: 0, bottom: 0),
                          title: const Text(
                            "Add Discount",
                            style: TextStyle(
                                fontSize: 14, color: POSColor.primaryColorDark),
                          ),
                          trailing: Obx(() => Switch(
                              value: controller.willDiscount.value,
                              onChanged: (v) {
                                controller.willDiscount.value = v;
                              })),
                        ),
                        Obx(
                          () => controller.willDiscount.value
                              ? Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: Get.width * 0.55,
                                      child: TextFormField(
                                        decoration: normalInputDecoration(
                                            hinttext: "Value"),
                                        controller:
                                            controller.itemsDiscountController,
                                        textInputAction: TextInputAction.done,
                                        keyboardType: TextInputType.number,
                                        cursorColor: POSColor.primaryColorDark,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                              color: POSColor.primaryColorDark),
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            onTap: () => controller.selectedType
                                                .value = DiscountType.percent,
                                            child: Obx(() => Container(
                                                  width: Get.width * 0.15,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5,
                                                          bottom: 5,
                                                          left: 13,
                                                          right: 13),
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      color: controller
                                                                  .selectedType
                                                                  .value ==
                                                              DiscountType
                                                                  .percent
                                                          ? POSColor
                                                              .primaryColorDark
                                                          : Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Icon(
                                                    Icons.percent,
                                                    size: 22,
                                                    color: controller
                                                                .selectedType
                                                                .value ==
                                                            DiscountType.percent
                                                        ? Colors.white
                                                        : POSColor
                                                            .primaryColorDark,
                                                  ),
                                                )),
                                          ),
                                          InkWell(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            onTap: () => controller.selectedType
                                                .value = DiscountType.normal,
                                            child: Obx(() => Container(
                                                  width: Get.width * 0.15,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5,
                                                          bottom: 5,
                                                          left: 13,
                                                          right: 13),
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      color: controller
                                                                  .selectedType
                                                                  .value ==
                                                              DiscountType
                                                                  .normal
                                                          ? POSColor
                                                              .primaryColorDark
                                                          : Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Image.asset(
                                                    'assets/images/sigma.png',
                                                    width: 22,
                                                    height: 22,
                                                    color: controller
                                                                .selectedType
                                                                .value ==
                                                            DiscountType.normal
                                                        ? Colors.white
                                                        : POSColor
                                                            .primaryColorDark,
                                                  ),
                                                )),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        const Text(
                          "Inventory",
                          style: TextStyle(
                              color: POSColor.primaryColorDark,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onTap: () {
                            controller.willTrack.value =
                                !controller.willTrack.value;
                          },
                          contentPadding: const EdgeInsets.only(
                              left: 10, right: 10, top: 0, bottom: 0),
                          title: const Text(
                            "Track Stock",
                            style: TextStyle(
                                fontSize: 14, color: POSColor.primaryColorDark),
                          ),
                          trailing: Obx(() => Switch(
                              value: controller.willTrack.value,
                              onChanged: (v) {
                                controller.willTrack.value = v;
                              })),
                        ),
                        Obx(
                          () => controller.willTrack.value
                              ? TextFormField(
                                  decoration:
                                      normalInputDecoration(hinttext: "Stock"),
                                  controller: controller.itemsStockController,
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  cursorColor: POSColor.primaryColorDark,
                                )
                              : const SizedBox(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        const Text(
                          "Status",
                          style: TextStyle(
                              color: POSColor.primaryColorDark,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onTap: () {
                            controller.itemActiveStatus.value =
                                !controller.itemActiveStatus.value;
                          },
                          contentPadding: const EdgeInsets.only(
                              left: 10, right: 10, top: 0, bottom: 0),
                          title: const Text(
                            "Item Active status",
                            style: TextStyle(
                                fontSize: 14, color: POSColor.primaryColorDark),
                          ),
                          trailing: Obx(() => Switch(
                              value: controller.itemActiveStatus.value,
                              onChanged: (v) {
                                controller.itemActiveStatus.value = v;
                              })),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        const Text(
                          "Ads",
                          style: TextStyle(
                              color: POSColor.primaryColorDark,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onTap: () {
                            controller.willShowAds.value =
                                !controller.willShowAds.value;
                          },
                          contentPadding: const EdgeInsets.only(
                              left: 10, right: 10, top: 0, bottom: 0),
                          title: const Text(
                            "Show on Ads",
                            style: TextStyle(
                                fontSize: 14, color: POSColor.primaryColorDark),
                          ),
                          trailing: Obx(() => Switch(
                              value: controller.willShowAds.value,
                              onChanged: (v) {
                                controller.willShowAds.value = v;
                              })),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                        const Text(
                          "Representation",
                          style: TextStyle(
                              color: POSColor.primaryColorDark, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        controller.willShowAds.value
                            ? const SizedBox()
                            : InkWell(
                                borderRadius: BorderRadius.circular(10),
                                onTap: () {
                                  controller.selectedRepresentationType.value =
                                      Representation.shapeAndColor;
                                },
                                child: Obx(() => Row(
                                      children: [
                                        Radio(
                                            value: Representation.shapeAndColor,
                                            groupValue: controller
                                                .selectedRepresentationType
                                                .value,
                                            activeColor:
                                                POSColor.primaryColorDark,
                                            onChanged: (g) {
                                              controller
                                                      .selectedRepresentationType
                                                      .value =
                                                  Representation.shapeAndColor;
                                            }),
                                        const Text(
                                          "Shape and Color",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: POSColor.primaryColorDark),
                                        ),
                                      ],
                                    )),
                              ),
                        controller.willShowAds.value
                            ? const SizedBox()
                            : InkWell(
                                borderRadius: BorderRadius.circular(10),
                                onTap: () {
                                  controller.selectedRepresentationType.value =
                                      Representation.image;
                                },
                                child: Obx(() => Row(
                                      children: [
                                        Radio(
                                            value: Representation.image,
                                            groupValue: controller
                                                .selectedRepresentationType
                                                .value,
                                            activeColor:
                                                POSColor.primaryColorDark,
                                            onChanged: (g) {
                                              controller
                                                  .selectedRepresentationType
                                                  .value = Representation.image;
                                            }),
                                        const Text(
                                          "Image",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: POSColor.primaryColorDark),
                                        ),
                                      ],
                                    )),
                              ),
                        const SizedBox(
                          height: 20,
                        ),
                        controller.willShowAds.value
                            ? const SizedBox()
                            : Visibility(
                                visible: controller
                                        .selectedRepresentationType.value ==
                                    Representation.shapeAndColor,
                                child: SizedBox(
                                    width: Get.width,
                                    child: GridView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: controller.colors.length,
                                      shrinkWrap: true,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                        crossAxisSpacing: 4,
                                        mainAxisSpacing: 8,
                                      ),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return gridViewItem(
                                            POSColorUtils.getColor(
                                                controller.colors[index]),
                                            index);
                                      },
                                    )),
                              ),
                        controller.willShowAds.value
                            ? const SizedBox()
                            : const SizedBox(
                                height: 10,
                              ),
                        controller.willShowAds.value
                            ? const SizedBox()
                            : Visibility(
                                visible: controller
                                        .selectedRepresentationType.value ==
                                    Representation.shapeAndColor,
                                child: SizedBox(
                                  width: Get.width,
                                  child: GridView.count(
                                    crossAxisCount: 4,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    crossAxisSpacing: 5,
                                    children: [
                                      gridViewShapeItem(ShapeType.Circle),
                                      gridViewShapeItem(ShapeType.Diamond),
                                      gridViewShapeItem(ShapeType.Pentagon),
                                      gridViewShapeItem(ShapeType.Hexagon)
                                    ],
                                  ),
                                ),
                              ),
                        Visibility(
                          visible:
                              controller.selectedRepresentationType.value ==
                                      Representation.image ||
                                  controller.willShowAds.value,
                          child: SizedBox(
                            width: Get.width,
                            child: Obx(() {
                              return Align(
                                alignment: FractionalOffset.centerLeft,
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  alignment: WrapAlignment.start,
                                  spacing: 1,
                                  runSpacing: 1,
                                  children: [
                                    ...controller.photos
                                        .mapIndexed((index, photo) => Stack(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Builder(
                                                      builder: (context) {
                                                    if (photo
                                                        is ItemPhotoFile) {
                                                      return ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        child: Image.file(
                                                          photo.file,
                                                          width: 100,
                                                          height: 100,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      );
                                                    }
                                                    if (photo
                                                        is ItemPhotoNetwork) {
                                                      return ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              photo.fullURL,
                                                          fit: BoxFit.cover,
                                                          width: 100,
                                                          height: 100,
                                                          placeholder: (context,
                                                                  url) =>
                                                              getPlaceHolder(),
                                                          errorWidget: (context,
                                                                  url, err) =>
                                                              getPlaceHolder(
                                                                  err),
                                                        ),
                                                      );
                                                    }
                                                    return InkWell(
                                                      onTap: () {
                                                        if (index == 0) {
                                                          showPickMultiImageDialog(
                                                              context,
                                                              6 -
                                                                  controller
                                                                      .currentItemPhotoIndex
                                                                      .value,
                                                              onGetImage:
                                                                  (files) {
                                                            for (var e
                                                                in files) {
                                                              controller.photos[
                                                                      controller
                                                                          .currentItemPhotoIndex
                                                                          .value] =
                                                                  ItemPhoto
                                                                      .file(e);
                                                              controller
                                                                  .currentItemPhotoIndex
                                                                  .value++;
                                                            }
                                                          });
                                                        }
                                                      },
                                                      child: SizedBox(
                                                          width: 100,
                                                          height: 100,
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              child: index == 0
                                                                  ? getAddPlaceHolder()
                                                                  : getPlaceHolder())),
                                                    );
                                                  }),
                                                ),
                                                ((photo is ItemPhotoFile) ||
                                                        (photo
                                                            is ItemPhotoNetwork))
                                                    ? Positioned(
                                                        right: 10,
                                                        top: 10,
                                                        child: CloseIcon(
                                                          onTap: () {
                                                            controller.photos
                                                                .remove(photo);
                                                            controller.photos
                                                                .length++;
                                                            controller
                                                                .currentItemPhotoIndex
                                                                .value--;
                                                          },
                                                        ),
                                                      )
                                                    : const SizedBox(),
                                              ],
                                            ))
                                        .toList(),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GradientButton(
                            height: 40,
                            child: Text(
                              "save".tr.toUpperCase(),
                              style: const TextStyle(color: Colors.white),
                            ),
                            onTap: () {
                              if (controller.isEditItem.value) {
                                controller.updateItem();
                              } else {
                                controller.addItem();
                              }
                            }),
                      ]),
                ))));
  }

  Widget gridViewItem(Color color, int index) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => controller.itemSelectedIndex.value = index,
      child: Obx(() => Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: controller.itemSelectedIndex.value == index
              ? const Center(
                  child: Icon(
                    Icons.done,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              : const SizedBox())),
    );
  }

  Widget gridViewShapeItem(ShapeType c) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () => controller.selectedShape.value = c,
      child: Stack(
        children: [
          Center(
            child: CustomPaint(
              painter: c == ShapeType.Circle
                  ? CiclePainter(Colors.black, Colors.transparent, 35)
                  : c == ShapeType.Diamond
                      ? DiamondPainter(Colors.black, Colors.transparent, 35)
                      : c == ShapeType.Pentagon
                          ? PentagonPainter(
                              Colors.black, Colors.transparent, 35)
                          : HexagonPainter(
                              Colors.black, Colors.transparent, 35),
            ),
          ),
          controller.selectedShape.value == c
              ? const Center(
                  child: Icon(
                    Icons.done,
                    size: 30,
                    color: Colors.black,
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }

  // Widget imageGridViewItem(ItemPhoto? photo, BuildContext context,
  //     {bool isFirst = false}) {
  //   return InkWell(
  //       onTap: () {
  //         if (isFirst) {
  //           controller.photos.length == 5
  //               ? null
  //               : showPickMultiImageDialog(
  //                   context, 5 - controller.photos.length, onGetImage: (files) {
  //                   for (int i = 0; i < files.length; i++) {
  //                     //  controller.photos.addAll(files.map((e) => ItemPhoto.file(e)));
  //                     controller.photos[i + 1] = ItemPhoto.file(files[i]);
  //                   }
  //                 });
  //         }
  //       },
  //       child: photo == null && isFirst
  //           ? Center(
  //               child: Icon(
  //                 isFirst ? Icons.add : Icons.photo_outlined,
  //                 size: 30,
  //                 color: Colors.grey,
  //               ),
  //             )
  //           : Stack(
  //               children: [
  //                 Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Builder(builder: (context) {
  //                     if (photo is ItemPhotoFile) {
  //                       return Image.file(
  //                         photo.file,
  //                         width: 90,
  //                         height: 90,
  //                         fit: BoxFit.cover,
  //                       );
  //                     }
  //                     if (photo is ItemPhotoNetwork) {
  //                       return CachedNetworkImage(
  //                         imageUrl: photo.fullURL,
  //                         fit: BoxFit.cover,
  //                         width: 90,
  //                         height: 90,
  //                         placeholder: (context, url) => getPlaceHolder(),
  //                         errorWidget: (context, url, err) =>
  //                             getPlaceHolder(err),
  //                       );
  //                     }
  //                     return SizedBox(
  //                         width: 90, height: 90, child: getPlaceHolder());
  //                   }),
  //                 ),
  //                 Positioned(
  //                   right: 3,
  //                   top: 3,
  //                   child: CloseIcon(
  //                     onTap: () {
  //                       controller.photos.remove(photo);
  //                     },
  //                   ),
  //                 ),
  //               ],
  //             ));
  // }
}

class CiclePainter extends CustomPainter {
  final Color stokeColor;
  final Color fillColor;
  final double itemSize;
  CiclePainter(this.stokeColor, this.fillColor, this.itemSize);
  @override
  void paint(Canvas canvas, Size size) {
    final Paint stroke = Paint()
      ..color = stokeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    final Paint fill = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;
    double radius = itemSize;
    final Shapes shapes = Shapes(canvas: canvas);

    for (Paint paint in <Paint>[stroke, fill]) {
      (shapes
            ..paint = paint
            ..radius = radius)
          .draw("Circle");
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class DiamondPainter extends CustomPainter {
  final Color stokeColor;
  final Color fillColor;
  final double itemSize;
  DiamondPainter(this.stokeColor, this.fillColor, this.itemSize);
  @override
  void paint(Canvas canvas, Size size) {
    final Paint stroke = Paint()
      ..color = stokeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    final Paint fill = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;
    double radius = itemSize;
    final Shapes shapes = Shapes(canvas: canvas);

    for (Paint paint in <Paint>[stroke, fill]) {
      (shapes
            ..paint = paint
            ..radius = radius)
          .draw("Diamond");
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class PentagonPainter extends CustomPainter {
  final Color stokeColor;
  final Color fillColor;
  final double itemSize;
  PentagonPainter(this.stokeColor, this.fillColor, this.itemSize);
  @override
  void paint(Canvas canvas, Size size) {
    final Paint stroke = Paint()
      ..color = stokeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    final Paint fill = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;
    double radius = itemSize;
    final Shapes shapes = Shapes(canvas: canvas);

    for (Paint paint in <Paint>[stroke, fill]) {
      (shapes
            ..paint = paint
            ..radius = radius)
          .draw("Pentagon");
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HexagonPainter extends CustomPainter {
  final Color stokeColor;
  final Color fillColor;
  final double itemSize;
  HexagonPainter(this.stokeColor, this.fillColor, this.itemSize);
  @override
  void paint(Canvas canvas, Size size) {
    final Paint stroke = Paint()
      ..color = stokeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    final Paint fill = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;
    double radius = itemSize;
    final Shapes shapes = Shapes(canvas: canvas);

    for (Paint paint in <Paint>[stroke, fill]) {
      (shapes
            ..paint = paint
            ..radius = radius)
          .draw("Hexagon");
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
