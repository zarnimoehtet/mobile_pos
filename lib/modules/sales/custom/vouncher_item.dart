import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/modules/sales/controllers/sales_controller.dart';
import 'package:mobile_pos/core/extensions/extension_collection.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/custom/gradient_button.dart';
import '../../../core/custom/place_holder.dart';
import '../../../core/utils/color_utils.dart';
import '../../../data/model/item.dart';
import '../../items/views/item_add_page.dart';

class VouncherItem extends GetView<SalesController> {
  final Item item;
  final bool isFirst;
  const VouncherItem(this.item, this.isFirst, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isFirst
          ? const EdgeInsets.only(left: 15, right: 15, top: 15)
          : const EdgeInsets.only(left: 15, right: 15, top: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 10),
        title: Text(
          item.name ?? "",
          style: const TextStyle(color: POSColor.textColor, fontSize: 14),
        ),
        subtitle: Text(
          "MMK ${item.price?.toCurrencyFormat()}",
          style:
              const TextStyle(color: POSColor.blackTextColorOp99, fontSize: 12),
        ),
        leading: SizedBox(
            width: 35,
            child: Center(child: setCorresponseWidget(item.presentation!))),
        trailing: SizedBox(
          width: Get.width * 0.3,
          child: Row(
            children: [
              GradientButton(
                width: 30,
                height: 30,
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 20,
                ),
                onTap: () {
                  controller.removeFromCart(item);
                },
              ),
              Text(
                "${item.count}",
                style: const TextStyle(color: POSColor.textColor, fontSize: 16),
              ),
              GradientButton(
                width: 30,
                height: 30,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
                onTap: () {
                  controller.addItemtoCart(item);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget setCorresponseWidget(Presentation p) {
    if (p.presentType == "noads") {
      if (p.images!.isNotEmpty) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(75),
          child: CachedNetworkImage(
            imageUrl: p.images?.first ?? "",
            fit: BoxFit.cover,
            width: 35,
            height: 35,
            placeholder: (context, url) => getPlaceHolder(),
            errorWidget: (context, url, err) => getPlaceHolder(err),
          ),
        );
      } else {
        return CustomPaint(
          painter: p.color![1] == "circle"
              ? CiclePainter(POSColorUtils.getColor(p.color!.first),
                  POSColorUtils.getColor(p.color!.first), 18)
              : p.color![1] == "diamond"
                  ? DiamondPainter(POSColorUtils.getColor(p.color!.first),
                      POSColorUtils.getColor(p.color!.first), 18)
                  : p.color![1] == "pentagon"
                      ? PentagonPainter(POSColorUtils.getColor(p.color!.first),
                          POSColorUtils.getColor(p.color!.first), 18)
                      : HexagonPainter(POSColorUtils.getColor(p.color!.first),
                          POSColorUtils.getColor(p.color!.first), 18),
        );
      }
    } else {
      if (p.images!.isNotEmpty) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(75),
          child: CachedNetworkImage(
            imageUrl: p.images?.first ?? "",
            fit: BoxFit.cover,
            width: 35,
            height: 35,
            placeholder: (context, url) => getPlaceHolder(),
            errorWidget: (context, url, err) => getPlaceHolder(err),
          ),
        );
      }
    }
    return const SizedBox();
  }
}
