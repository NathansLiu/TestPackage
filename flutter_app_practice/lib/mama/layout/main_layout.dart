import 'package:flutter/material.dart';
import 'package:flutter_app_practice/mama/bean/main_bean.dart';
import 'package:flutter_app_practice/mama/demo/mobile_payment_view.dart';
import 'package:flutter_app_practice/mama/demo/mobile_payment_view_2.dart';
import 'package:flutter_app_practice/mama/layout/aspect_ratio_layout.dart';
import 'package:flutter_app_practice/mama/layout/c/container_layout.dart';
import 'package:flutter_app_practice/mama/layout/specified_location_layout.dart';
import 'package:flutter_app_practice/mama/util/test_jump.dart';

class MainLayoutDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainLayoutDemo();
  }
}

var _listBean  = new List<MainBean>();

void setData() {
  _listBean.add(new MainBean(AspectRatioWidget(), '等比例横'));
  _listBean.add(new MainBean(SpecifiedLocationWidget(), '等比例纵'));
  _listBean.add(new MainBean(ContainerView(), 'Container'));
  _listBean.add(new MainBean(MobilePaymentView(), '演示收款'));
  _listBean.add(new MainBean(MobilePaymentView_2(), '演示收款_2'));
}

class _MainLayoutDemo extends State<MainLayoutDemo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _listBean.clear();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('各种布局写法'),
      ),
      body: ListView.builder(
          itemCount: _listBean.length,
          itemBuilder: (context, idx) {
            return getWidget(context, idx);
          }),
    );
  }
}

Widget getWidget(BuildContext context, int idx) {
  Widget itemWidget = new Container(
    child: new MaterialButton(
      color: Colors.teal,
      padding: EdgeInsets.only(left: 100,right: 100),
      onPressed: () {
        jumpRoute(context, _listBean[idx].route);
      },
      child: Text(_listBean[idx].title),
      textColor: Colors.white,
    ),
  );
  return itemWidget;
}

