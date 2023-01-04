import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/extensions/extension_collection.dart';
import 'package:mobile_pos/modules/sales/controllers/sales_controller.dart';
import 'package:mobile_pos/modules/sales/views/vouncher_page.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/custom/border_input_decoration.dart';
import '../../../core/custom/place_holder.dart';
import '../../../core/utils/color_utils.dart';
import '../../../data/model/item.dart';
import '../../home/views/home_page.dart';
import '../../items/views/item_add_page.dart';

class SalesPage extends GetView<SalesController> {
  static const String route = "/sales";
  const SalesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.generateItemFilter();
    return Scaffold(
        body: Column(
      children: [totalChargesArea(), actionPanel(), itemListArea(context)],
    ));
  }

  Widget totalChargesArea() {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Get.toNamed(HomePage.route + SalesPage.route + VouncherPage.route);
      },
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Total charges",
                  style: TextStyle(color: POSColor.blackTextColorOp99),
                ),
                const SizedBox(
                  height: 2,
                ),
                Obx(() => Text(
                      "MMK ${controller.totalCharges.value.toCurrencyFormat()}",
                      style: const TextStyle(color: Colors.black, fontSize: 25),
                    )),
                const SizedBox(
                  height: 2,
                ),
                Obx(() => Text(
                      "${controller.totalItem} item",
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                    )),
              ],
            ),
            ClipPath(
              clipper: BackgroundClipper(),
              child: Container(
                width: Get.width * 0.45,
                height: 100,
                padding: const EdgeInsets.only(right: 20),
                decoration: const BoxDecoration(
                    gradient: POSColor.primaryGradientColorLR),
                child: Align(
                  alignment: FractionalOffset.centerRight,
                  child: SvgPicture.asset(
                    'assets/svg/shopping-cart.svg',
                    width: 70,
                    height: 70,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget actionPanel() {
    return Container(
      height: 50,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
      child: Obx(
        () => Row(
          children: [
            Obx(() => Flexible(
                  flex: 7,
                  child: controller.isSearch.value
                      ? TextFormField(
                          decoration: normalInputDecoration(
                              enableUnderLine: true,
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10)),
                          controller: controller.searchItemController,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.text,
                          cursorColor: POSColor.primaryColorDark,
                          autofocus: true,
                        )
                      : DropdownButtonFormField<String>(
                          decoration: normalInputDecoration(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              hinttext: controller.itemFilter.first,
                              color: POSColor.blackTextColorOp99,
                              alignLabelWithHint: false,
                              enableUnderLine: true),
                          isExpanded: true,
                          items: controller.itemFilter.map((i) {
                            return DropdownMenuItem<String>(
                                value: i,
                                child: Text(
                                  i,
                                  style: const TextStyle(
                                    color: POSColor.blackTextColorOp99,
                                  ),
                                ));
                          }).toList(),
                          onChanged: (v) {
                            controller.getSelectedCategory(v!);
                            controller.fetchItem(0,
                                categoryId:
                                    controller.selectedCategory.value?.id);
                          },
                        ),
                )),
            controller.isSearch.value
                ? const SizedBox()
                : Container(
                    width: 1,
                    color: Colors.grey.shade300,
                  ),
            Flexible(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      controller.isSearch.value = !controller.isSearch.value;
                      if (controller.searchItemController.text.isNotEmpty) {
                        controller.searchItemController.clear();
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Obx(() => Icon(
                            controller.isSearch.value
                                ? Icons.close
                                : Icons.search,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Container(
                    width: 1,
                    color: Colors.grey.shade300,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      controller.clearCart();
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/images/barcode.png',
                          width: 30,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemListArea(BuildContext context) {
    return Expanded(
        child: RefreshIndicator(
      onRefresh: () async {
        controller.fetchItem(0);
      },
      child: Obx(() {
        if (controller.isLoading.value && controller.itemList.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(POSColor.primaryColorDark),
            ),
          );
        } else if (controller.error.value?.isNotEmpty ?? false) {
          return Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Text(
              controller.error.value.toString(),
              textAlign: TextAlign.center,
            ),
          );
        } else {
          return ListView.separated(
              controller: controller.itemScrollController,
              itemCount: controller.itemList.length,
              itemBuilder: (context, index) {
                return item(controller.itemList[index], index % 2 == 1);
              },
              separatorBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    color: Colors.grey.shade300,
                    height: 1,
                  ),
                );
              });
        }
      }),
    ));
  }

  Widget item(Item item, bool isColored) {
    return ListTile(
        onTap: () {
          controller.addItemtoCart(item);
        },
        contentPadding: const EdgeInsets.only(left: 20, right: 20),
        title: Text(
          item.name ?? "",
          style:
              const TextStyle(color: POSColor.primaryColorDark, fontSize: 14),
        ),
        // subtitle: Text(
        //   item.desc ?? "",
        //   style: const TextStyle(
        //     color: POSColor.primaryColorDark,
        //   ),
        // ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "MMK ${item.price?.toCurrencyFormat()}",
              style: const TextStyle(color: POSColor.textColor),
            ),
            item.isDiscount == "yes"
                ? item.discountType == "amount" && item.discount == 0
                    ? const SizedBox()
                    : Text(
                        item.discountType == "amount"
                            ? "${item.discount?.toCurrencyFormat()} MMK Off"
                            : "${item.discount}% Off",
                        style: const TextStyle(
                            color: POSColor.blackTextColorOp99, fontSize: 12),
                      )
                : const SizedBox(),
          ],
        ),
        leading: SizedBox(
            width: 40,
            child: Center(child: setCorresponseWidget(item.presentation!))));
  }

  Widget setCorresponseWidget(Presentation p) {
    if (p.presentType == "noads") {
      if (p.images!.isNotEmpty) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(75),
          child: CachedNetworkImage(
            imageUrl: p.images?.first ?? "",
            fit: BoxFit.cover,
            width: 40,
            height: 40,
            placeholder: (context, url) => getPlaceHolder(),
            errorWidget: (context, url, err) => getPlaceHolder(err),
          ),
        );
      } else {
        return CustomPaint(
          painter: p.color![1] == "circle"
              ? CiclePainter(POSColorUtils.getColor(p.color!.first),
                  POSColorUtils.getColor(p.color!.first), 22)
              : p.color![1] == "diamond"
                  ? DiamondPainter(POSColorUtils.getColor(p.color!.first),
                      POSColorUtils.getColor(p.color!.first), 22)
                  : p.color![1] == "pentagon"
                      ? PentagonPainter(POSColorUtils.getColor(p.color!.first),
                          POSColorUtils.getColor(p.color!.first), 22)
                      : HexagonPainter(POSColorUtils.getColor(p.color!.first),
                          POSColorUtils.getColor(p.color!.first), 22),
        );
      }
    } else {
      if (p.images!.isNotEmpty) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(75),
          child: CachedNetworkImage(
            imageUrl: p.images?.first ?? "",
            fit: BoxFit.cover,
            width: 40,
            height: 40,
            placeholder: (context, url) => getPlaceHolder(),
            errorWidget: (context, url, err) => getPlaceHolder(err),
          ),
        );
      }
    }
    return const SizedBox();
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.38, size.height * 0.01, size.width * 0.4, 0,
        size.width * 0.42, 0);
    path.cubicTo(
        size.width * 0.42, 0, size.width * 0.95, 0, size.width * 0.95, 0);
    path.cubicTo(size.width * 0.98, 0, size.width, size.height * 0.03,
        size.width, size.height * 0.06);
    path.cubicTo(size.width, size.height * 0.06, size.width, size.height * 0.94,
        size.width, size.height * 0.94);
    path.cubicTo(size.width, size.height * 0.97, size.width * 0.98, size.height,
        size.width * 0.95, size.height);
    path.cubicTo(size.width * 0.95, size.height, size.width * 0.05, size.height,
        size.width * 0.05, size.height);
    path.cubicTo(size.width * 0.01, size.height, -0.01, size.height * 0.95,
        size.width * 0.01, size.height * 0.91);
    path.cubicTo(size.width * 0.01, size.height * 0.91, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);
    path.cubicTo(size.width * 0.37, size.height * 0.03, size.width * 0.37,
        size.height * 0.03, size.width * 0.37, size.height * 0.03);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
