import 'package:flutter/material.dart';
import 'package:money_master/core/constants/theme/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.child,
    this.color,
    this.height,
    this.width,
    this.radius,
    this.gradient,
    this.buttonText,
  });
  final void Function() onPressed;
  final Color? color;
  final double? height;
  final double? radius;
  final double? width;
  final Gradient? gradient;
  final Widget? child;
  final String? buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 14),
          gradient: gradient),
      child: MaterialButton(
        elevation: 3.0,
        minWidth: width ?? double.infinity,
        height: height ?? 50,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 14), // <-- Radius
        ),
        color: color,
        child: buttonText == null
            ? child
            : Text(
                buttonText!,
                style: AppStyles.semiBold16White,
              ),
      ),
    );
  }
}
