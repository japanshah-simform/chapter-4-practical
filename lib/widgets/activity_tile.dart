import 'package:flutter/material.dart';

import '../utils/theme/colors.dart';

class ActivityTile extends StatelessWidget {
  const ActivityTile({
    super.key,
    required this.leading,
    this.trailing,
    this.bgColor,
    this.padding,
    this.radius,
    this.gap,
  });

  final Widget leading;
  final Widget? trailing;
  final Color? bgColor;
  final EdgeInsets? padding;
  final double? radius;
  final SizedBox? gap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 16),
        color: bgColor ?? AppColors.themeGrey,
      ),
      padding: padding ?? EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading,
          gap ?? Container(),
          trailing ?? Container(),
        ],
      ),
    );
  }
}
