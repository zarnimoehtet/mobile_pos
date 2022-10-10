import 'package:flutter/material.dart';
import 'package:flutter_shapes/flutter_shapes.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/enums/representation.dart';
import 'package:mobile_pos/core/enums/sold_by.dart';
import 'package:mobile_pos/modules/items/ui/controllers/items_controller.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/custom/border_input_decoration.dart';
import '../../../../core/custom/gradient_button.dart';
import '../../../../core/enums/coloring.dart';
import '../../../../core/temp/temp_data.dart';

class ItemAddPage extends GetView<ItemsController> {
  static const String route = "/item_add";
  const ItemAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Item"),
          centerTitle: true,
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
                        DropdownButtonFormField<String>(
                          isExpanded: true,
                          decoration: normalInputDecoration(
                            hinttext: "Categories (Optional)",
                          ),
                          items: discountList.map((i) {
                            return DropdownMenuItem<String>(
                                value: i,
                                child: Text(
                                  i,
                                  style: const TextStyle(
                                    color: POSColor.primaryColorDark,
                                  ),
                                ));
                          }).toList(),
                          onChanged: (v) {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Sold By",
                          style: TextStyle(
                            color: POSColor.primaryColorDark,
                            fontSize: 14,
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            controller.selectedSoldType.value = SoldBy.each;
                          },
                          child: Obx(() => Row(
                                children: [
                                  Radio(
                                      value: SoldBy.each,
                                      groupValue:
                                          controller.selectedSoldType.value,
                                      activeColor: POSColor.primaryColorDark,
                                      onChanged: (g) {
                                        controller.selectedSoldType.value =
                                            SoldBy.each;
                                      }),
                                  const Text(
                                    "Each",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: POSColor.primaryColorDark),
                                  ),
                                ],
                              )),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            controller.selectedSoldType.value = SoldBy.weight;
                          },
                          child: Obx(() => Row(
                                children: [
                                  Radio(
                                      value: SoldBy.weight,
                                      groupValue:
                                          controller.selectedSoldType.value,
                                      activeColor: POSColor.primaryColorDark,
                                      onChanged: (g) {
                                        controller.selectedSoldType.value =
                                            SoldBy.weight;
                                      }),
                                  const Text(
                                    "Weight",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: POSColor.primaryColorDark),
                                  ),
                                ],
                              )),
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
                              onTap: () {},
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
                          children: [
                            SizedBox(
                              width: Get.width * 0.7,
                              child: TextFormField(
                                decoration: normalInputDecoration(
                                    hinttext: "Barcode (Optional)"),
                                controller: controller.itemsSKUController,
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
                        TextFormField(
                          decoration: normalInputDecoration(
                              hinttext: "Video link (Optional)"),
                          controller: controller.itemsLinkController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          cursorColor: POSColor.primaryColorDark,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: normalInputDecoration(
                              hinttext: "Description (Optional)"),
                          controller: controller.itemsDescriptionController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
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
                        DropdownButtonFormField<String>(
                          hint: Text(
                            discountList.first,
                            style: const TextStyle(
                              color: POSColor.primaryColorDark,
                            ),
                          ),
                          isExpanded: true,
                          items: discountList.map((i) {
                            return DropdownMenuItem<String>(
                                value: i,
                                child: Text(
                                  i,
                                  style: const TextStyle(
                                    color: POSColor.primaryColorDark,
                                  ),
                                ));
                          }).toList(),
                          onChanged: (v) {},
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
                                  decoration: normalInputDecoration(
                                      hinttext: "Instock"),
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
                        InkWell(
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
                                          .selectedRepresentationType.value,
                                      activeColor: POSColor.primaryColorDark,
                                      onChanged: (g) {
                                        controller.selectedRepresentationType
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
                        InkWell(
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
                                          .selectedRepresentationType.value,
                                      activeColor: POSColor.primaryColorDark,
                                      onChanged: (g) {
                                        controller.selectedRepresentationType
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
                        Visibility(
                          visible:
                              controller.selectedRepresentationType.value ==
                                  Representation.shapeAndColor,
                          child: SizedBox(
                            height: 80,
                            width: Get.width,
                            child: GridView.count(
                              crossAxisCount: 4,
                              scrollDirection: Axis.vertical,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisSpacing: 5,
                              children: [
                                gridViewItem(
                                    Colors.grey.shade300, Coloring.normal),
                                gridViewItem(Colors.deepOrange.shade600,
                                    Coloring.orange),
                                gridViewItem(Colors.red.shade600, Coloring.red),
                                gridViewItem(
                                    Colors.yellow.shade700, Coloring.yellow),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                          visible:
                              controller.selectedRepresentationType.value ==
                                  Representation.shapeAndColor,
                          child: SizedBox(
                            height: 80,
                            width: Get.width,
                            child: GridView.count(
                              crossAxisCount: 4,
                              scrollDirection: Axis.vertical,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisSpacing: 5,
                              children: [
                                gridViewItem(Colors.lightGreen, Coloring.green),
                                gridViewItem(Colors.green, Coloring.darkgreen),
                                gridViewItem(Colors.blue, Coloring.blue),
                                gridViewItem(Colors.purple, Coloring.purple),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Visibility(
                          visible:
                              controller.selectedRepresentationType.value ==
                                  Representation.shapeAndColor,
                          child: SizedBox(
                            height: 80,
                            width: Get.width,
                            child: GridView.count(
                              crossAxisCount: 4,
                              scrollDirection: Axis.vertical,
                              physics: const NeverScrollableScrollPhysics(),
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
                                  Representation.image,
                          child: SizedBox(
                            height: 110,
                            width: Get.width,
                            child: GridView.count(
                              crossAxisCount: 3,
                              scrollDirection: Axis.vertical,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisSpacing: 5,
                              children: [
                                imageGridViewItem("", isFirst: true),
                                imageGridViewItem(""),
                                imageGridViewItem(""),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                            visible:
                                controller.selectedRepresentationType.value ==
                                    Representation.image,
                            child: SizedBox(
                              height: 110,
                              width: Get.width,
                              child: GridView.count(
                                crossAxisCount: 3,
                                scrollDirection: Axis.vertical,
                                physics: const NeverScrollableScrollPhysics(),
                                crossAxisSpacing: 5,
                                children: [
                                  imageGridViewItem(""),
                                  imageGridViewItem(""),
                                  imageGridViewItem(""),
                                ],
                              ),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        GradientButton(
                            height: 40,
                            child: Text(
                              "Add Item".toUpperCase(),
                              style: const TextStyle(color: Colors.white),
                            ),
                            onTap: () {}),
                      ]),
                ))));
  }

  Widget gridViewItem(Color color, Coloring c) {
    return InkWell(
      onTap: () => controller.itemSelectedColor.value = c,
      child: Obx(() => Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: controller.itemSelectedColor.value == c
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
      onTap: () => controller.selectedShape.value = c,
      child: Stack(
        children: [
          Center(
            child: CustomPaint(
              painter: c == ShapeType.Circle
                  ? CiclePainter()
                  : c == ShapeType.Diamond
                      ? DiamondPainter()
                      : c == ShapeType.Pentagon
                          ? PentagonPainter()
                          : HexagonPainter(),
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

  Widget imageGridViewItem(String image, {bool isFirst = false}) {
    return InkWell(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300),
          child: image == ""
              ? Center(
                  child: Icon(
                    isFirst ? Icons.add : Icons.photo_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                )
              : const SizedBox()),
    );
  }
}

class CiclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint stroke = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    final Paint fill = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.fill;
    const double radius = 35;
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
  @override
  void paint(Canvas canvas, Size size) {
    final Paint stroke = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    final Paint fill = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.fill;
    const double radius = 35;
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
  @override
  void paint(Canvas canvas, Size size) {
    final Paint stroke = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    final Paint fill = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.fill;
    const double radius = 35;
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
  @override
  void paint(Canvas canvas, Size size) {
    final Paint stroke = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    final Paint fill = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.fill;
    const double radius = 35;
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
