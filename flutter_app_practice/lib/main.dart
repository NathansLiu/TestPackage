import 'package:flutter/material.dart';
import 'package:flutter_app_practice/mama/route/widget_route_1.dart';

import 'package:flutter_app_practice/test/test_appbar_view.dart';
import 'package:flutter_app_practice/test/test_gesture_detector.dart';
import 'package:flutter_app_practice/test/test_shopping_listItem_1.dart';
import 'package:flutter_app_practice/test/test_shopping_listItem_2.dart';
import 'package:flutter_app_practice/test/test_stack_view.dart';
import 'package:flutter_app_practice/test/test_stateful_widget.dart';
import 'package:flutter_app_practice/test/test_widgets_1.dart';
import 'package:flutter_app_practice/test/test_wrap_view.dart';

void main (){
  runApp(new MaterialApp(
    //静态路由方式 配置初始路由
    initialRoute: '/',
  title: '赛博坦',
//  home: new ShoppingList(
//    products: <Product>[
//      new Product(name: '赛博坦'),
//      new Product(name: '那美克'),
//      new Product(name: '赛亚星'),
//    ],
//  ),
  home: new RouteStateful(),
  ));
  ///测试测试测试测试测试测试
  ///测试测试测试测试测试测试
  ///测试测试测试测试测试测试

}