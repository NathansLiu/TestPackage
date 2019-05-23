import 'package:flutter/material.dart';
import 'package:flutter_app_practice/mama/earth/earth_view.dart';
import 'package:flutter_app_practice/mama/earth/heiban/sample_page.dart';
import 'package:flutter_app_practice/mama/layout/main_layout.dart';
import 'package:flutter_app_practice/mama/route/widget_route_2.dart';
import 'package:flutter_app_practice/mama/util/test_jump.dart';
import 'package:flutter_app_practice/mama/bean/main_bean.dart';

var _lsitMainBean = List<MainBean>();

class RouteStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    initData();
    return HomeWidget();
  }
}

class HomeWidget extends State<RouteStateful> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER'),
      ),
      body: ListView.builder(
          itemCount: _lsitMainBean.length,
          itemBuilder: (context, idx) {
            return setContainer(idx,context);
          }),
    );
  }
}

Container setContainer(int idx,BuildContext context) {
  Container ContainerItem = new Container(
    child: MaterialButton(
      onPressed: (){
        jumpRoute(context,_lsitMainBean[idx].route);
      },
      color: Colors.cyan,
      textColor: Colors.white,
      child: Text(_lsitMainBean[idx].title),
    ),
  );
  return ContainerItem;
}
//装载数据
void initData() {
  _lsitMainBean.add(new MainBean(RouteNewView('YunTaiShan.河南'), '带参跳转'));
  _lsitMainBean.add(new MainBean(EarthView(), '流浪地球'));
  _lsitMainBean.add(new MainBean(SamplePage(), '黑板'));
  _lsitMainBean.add(new MainBean(MainLayoutDemo(), '各种布局实践'));
}
