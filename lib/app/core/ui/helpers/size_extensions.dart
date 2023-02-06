import 'package:flutter/cupertino.dart';

extension SizeExtensions on BuildContext {
  double get screenWidith => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double percentWidith(double percent) => screenWidith * percent;
  double percentHeight(double percent) => screenHeight * percent;
}
