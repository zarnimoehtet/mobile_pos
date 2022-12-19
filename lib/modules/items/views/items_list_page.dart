import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/core/constants/colors.dart';
import 'package:mobile_pos/core/temp/temp_data.dart';
import 'package:mobile_pos/modules/items/controllers/items_controller.dart';

import '../../../../core/custom/border_input_decoration.dart';

import '../../../core/custom/place_holder.dart';
import '../../../core/utils/color_utils.dart';
import '../../../data/model/item.dart';
import '../../home/views/home_page.dart';
import 'item_add_page.dart';
import 'items_page.dart';

class ItemsListPage extends GetView<ItemsController> {
  static const String route = "/items_list";
  const ItemsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.fetchItem(0);
    controller.generateItemFilter();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Items"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.isEditItem.value = false;
          controller.editItem.value = null;
          Get.toNamed(HomePage.route + ItemsPage.route + ItemAddPage.route);
        },
        backgroundColor: POSColor.primaryColorDark,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: RefreshIndicator(onRefresh: () async {
        controller.fetchItem(0);
      }, child: Obx(() {
        if (controller.isLoading.value && controller.unitList.isEmpty) {
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
          return CustomScrollView(
            controller: controller.itemScrollController,
            slivers: [
              SliverToBoxAdapter(
                child: DropdownButtonFormField<String>(
                  decoration: normalInputDecoration(
                      padding: const EdgeInsets.only(left: 15, right: 15),
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
                  onChanged: (v) {},
                ),
              ),
              SliverToBoxAdapter(
                child: Divider(
                  height: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              SliverToBoxAdapter(
                child: ListView.separated(
                    itemCount: controller.itemList.length,
                    shrinkWrap: true,
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
                    }),
              )
            ],
          );
        }
      })),
    );
  }

  Widget item(Item item, bool isColored) {
    return ListTile(
        onTap: () {
          controller.isEditItem.value = true;
          controller.editItem.value = item;
          Get.toNamed(HomePage.route + ItemsPage.route + ItemAddPage.route);
        },
        contentPadding: const EdgeInsets.only(left: 20, right: 20),
        title: Text(
          item.name ?? "",
          style: const TextStyle(color: POSColor.primaryColorDark),
        ),
        subtitle: Text(
          item.desc ?? "",
          style: const TextStyle(
            color: POSColor.primaryColorDark,
          ),
        ),
        leading: SizedBox(
            width: 50,
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
            width: 50,
            height: 50,
            placeholder: (context, url) => getPlaceHolder(),
            errorWidget: (context, url, err) => getPlaceHolder(err),
          ),
        );
      } else {
        return CustomPaint(
          painter: p.color![1] == "circle"
              ? CiclePainter(POSColorUtils.getColor(p.color!.first),
                  POSColorUtils.getColor(p.color!.first), 25)
              : p.color![1] == "diamond"
                  ? DiamondPainter(POSColorUtils.getColor(p.color!.first),
                      POSColorUtils.getColor(p.color!.first), 25)
                  : p.color![1] == "pentagon"
                      ? PentagonPainter(POSColorUtils.getColor(p.color!.first),
                          POSColorUtils.getColor(p.color!.first), 25)
                      : HexagonPainter(POSColorUtils.getColor(p.color!.first),
                          POSColorUtils.getColor(p.color!.first), 25),
        );
      }
    } else {
      if (p.images!.isNotEmpty) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(75),
          child: CachedNetworkImage(
            imageUrl: p.images?.first ?? "",
            fit: BoxFit.cover,
            width: 50,
            height: 50,
            placeholder: (context, url) => getPlaceHolder(),
            errorWidget: (context, url, err) => getPlaceHolder(err),
          ),
        );
      }
    }
    return const SizedBox();
  }
}
