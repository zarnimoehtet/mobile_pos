import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class CloseIcon extends StatelessWidget {
  final IconData? closeIcon;
  final Color? backgroundColor;
  final Function()? onTap;
  const CloseIcon({Key? key, this.closeIcon, this.backgroundColor, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: backgroundColor ?? POSColor.primaryColorDark,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const SizedBox(width: 20, height: 20),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Icon(
              closeIcon ?? Icons.close,
              color: Colors.white.withOpacity(0.9),
              size: 14,
            ),
          )
        ],
      ),
    );
  }
}
