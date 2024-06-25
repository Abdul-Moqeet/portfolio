import 'package:flutter/material.dart';

class ButtonResponsive {
  static WidthgetStaticSize(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (size.width > 1350) {
      return 150;
    } else if (950 < size.width && size.width < 1350) {
      return 150;
    } else if (700 <= size.width && size.width <= 950) {
      return 120;
    } else if (300 < size.width && size.width < 700) {
      return 100;
    }
  }

    static HeightgetStaticSize(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (size.width > 1350) {
      return 50;
    } else if (950 <= size.width && size.width < 1350) {
      return 50;
    } else if (700 <= size.width && size.width < 950) {
      return 50;
    } else if (300 < size.width && size.width < 700) {
      return 50;
    }
  }
}
