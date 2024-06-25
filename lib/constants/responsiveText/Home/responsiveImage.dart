import 'package:flutter/material.dart';

class ImageResponsive {
  static getStaticSize(BuildContext context){
    Size size = MediaQuery.of(context).size;

    if(size.width > 1200){
      return 350;
    }else if(800 < size.width && size.width < 1200){
      return 340;
    }else if(600 < size.width && size.width < 800){
      return 300;
    }else{ return 280;
  }}
}