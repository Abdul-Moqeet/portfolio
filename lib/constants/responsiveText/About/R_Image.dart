import 'package:flutter/material.dart';

class AboutImageResponsive {
  static WidthgetStaticSize(BuildContext context){
    Size size = MediaQuery.of(context).size;

    if(size.width > 1200){
      return 450;
    }else if(1000 <= size.width && size.width <= 1200){
      return 475;
    }else if(600 <= size.width && size.width <= 1000){
      return 400;
    }else if(300 < size.width && size.width < 600){ return 300;
  }}

  static HeightgetStaticSize(BuildContext context){
    Size size = MediaQuery.of(context).size;

    if(size.width > 1200){
      return 500;
    }else if(800 < size.width && size.width <= 1200){
      return 400;
    }else if(600 <= size.width && size.width <= 800){
      return 340;
    }else if(300 < size.width && size.width < 800){ return 350;
  }}
  

}

 