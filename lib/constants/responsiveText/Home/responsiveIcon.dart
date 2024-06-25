import 'package:flutter/material.dart';

class IconResponsive {
  static getStaticSize(BuildContext context){
    Size size = MediaQuery.of(context).size;

    if(size.width > 1200){
      return 40.0;
    }else if(size.width < 1200 && size.width < 1100 ){
      return 35;
    }else {
      return 30;
    }
  }
}