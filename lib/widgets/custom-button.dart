import 'package:flutter/material.dart';

import '../../utils/theme/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      this.color,
      this.borderColor,
      required this.child,
      this.textColor,
      this.width});

  final Function() onPressed;
  final Color? color;
  final Color? borderColor;
  final Widget child;
  final Color? textColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width ?? MediaQuery.of(context).size.width,
      onPressed: onPressed,
      color: color ?? AppColors.buttonBg,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32),
        borderSide: BorderSide(
          color: borderColor ?? AppColors.buttonBg,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      textColor: textColor ?? Colors.white,
      elevation: 0,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: child),
    );
  }
}
