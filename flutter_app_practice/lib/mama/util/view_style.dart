
import 'package:flutter/material.dart';
TextStyle getTextStyle(Color colors,double fontsizes,bool isFontWeight ){
  return TextStyle(
    color: colors
        ,fontSize: fontsizes
      ,fontWeight: isFontWeight == true ? FontWeight.bold : FontWeight.normal
  );
}

