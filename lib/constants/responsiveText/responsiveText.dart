import 'package:flutter/material.dart';

class ResponsiveText {
  static TextStyle getTextStyle(BuildContext context) {
    double size = MediaQuery.of(context).size.width;

    if (size > 1200) {
      return TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    } else if(600 < size && size < 1200){
      return TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
    }else{
       return TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
      }
      
    
  }
}