import 'package:flutter/material.dart';
import 'package:flutter_app_practice/mama/route/widget_route_2.dart';
import 'package:flutter_app_practice/test/test_appbar_view.dart';

//跳转
void testRoute_1(BuildContext context,String s) {
  Navigator.push(context, new MaterialPageRoute(builder: (d){
    return new RouteNewView(s);
  }));
}
//通用跳转
void jumpRoute(BuildContext context,Widget covariant) {
  Navigator.push(context, new MaterialPageRoute(builder: (d){
    return covariant;
  }));
}
