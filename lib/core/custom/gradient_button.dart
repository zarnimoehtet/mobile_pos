import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:mobile_pos/core/constants/colors.dart';

class GradientButton extends StatelessWidget {
  final Gradient? gradient;
  final Widget child;
  final Callback? onTap;
  final double? width;
  final double? height;
  final BorderRadius? radius;
  final EdgeInsets? padding;
  const GradientButton({
    Key? key,
    this.gradient,
    this.width,
    this.height,
    this.radius,
    required this.child,
    this.onTap,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      minWidth: width,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: radius ?? BorderRadius.circular((height ?? 0) / 2)),
      child: Ink(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          gradient: gradient ?? POSColor.primaryGradientColorLR,
          borderRadius: radius ?? BorderRadius.circular((height ?? 0) / 2),
        ),
        child: Center(child: child),
      ),
      onPressed: () {
        onTap?.call();
      },
    );
  }
}
