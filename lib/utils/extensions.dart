import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

extension NumberFormatting on num {
  String format() {
    final formatter = NumberFormat('#,###');
    return formatter.format(this);
  }
}

extension ScreenSize on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}
