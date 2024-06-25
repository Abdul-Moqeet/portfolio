import 'package:flutter/material.dart';

class ContainerResponsive {
  // for height of "expereince" section containers (Border outlined containers)
  static getStaticSize(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (size.width > 1200) {
      return 150.0;
    } else if (900 < size.width && size.width <= 1200) {
      return 130;
    } else if (600 < size.width && size.width <= 900) {
      return 130;
    }
    else if(300 < size.width && size.width <= 600) {
      return 200;
    }
    else{
      return 130;
    }
  }

// for width of "expereince" section containers (Border outlined containers)

  static WidthgetStaticSize(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (size.width > 1200) {
      return 250.0;
    } else if (900 < size.width && size.width <= 1200) {
      return 225;
    } else if (600 < size.width && size.width < 900) {
      return 200;
    }  else if(300 < size.width && size.width < 600) {
      return 150;
    
    }
  }

  //for About Description Container
  static ContainerDescpGetStaticSize(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (size.width > 1200) {
      return size.width - size.width * 0.5;
    } else if (900 <= size.width && size.width <= 1200) {
      return 600;
    } else if (600 <= size.width && size.width < 900) {
      return 500;
    } else if(300 < size.width && size.width < 600) {
      return 300;
    
    
    }
  }
}
