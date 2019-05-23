import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContainerView();
  }
}

class _ContainerView extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text('收款', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        //去掉AppBar阴影
        elevation: 0,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[_widgetBody(),
          _widgetFoot()
          ],
        ),
      ),
    );
  }
}

//身体部分
Widget _widgetBody() {
  return new Expanded(
      child: new SingleChildScrollView(
        child: new Container(
          margin: EdgeInsets.only(top: 10),
          color: Colors.white,
          child: _widgetBodyChild_1(),
        ),
      ));
}

Widget _widgetBodyChild_1() {
  return new Column(
    children: <Widget>[
      ///头像 手机号部分
      new Container(
        height: 70,
        color: Color(0x80ffffe0),
        child: new Row(
          children: <Widget>[
            //头像
            new Container(
              width: 70,
              color: Color(0xffffff00),
            ),
            //姓名 会员等级
            new Container(
              width: 100,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Expanded(
                      child: new Container(
                    color: Color(0xff008b8b),
                  )),
                  new Expanded(
                      child: new Container(
                    color: Color(0x80800080),
                  ))
                ],
              ),
            ),
            //手机号
            new Expanded(
                child: new Container(
              alignment: Alignment.centerRight,
              color: Color(0x80ff00ff),
//                child: new Container(
//                  height: 20,
//                  width: 80,
//                  margin: EdgeInsets.only(right: 10),
//                  color: Color(0xffffc0cb),
//                ),
            ))
          ],
        ),
      ),

      ///商品列表部分
      new Container(
        margin: EdgeInsets.only(top: 10),
        height: 200,
        color: Color(0xffffbb33),
        child: new Align(),
      ),

      ///积分
      new Container(
        margin: EdgeInsets.only(top: 1),
        height: 66,
        color: Color(0x80d2691e),
        child: new Row(
          children: <Widget>[
            new Expanded(
                child: new Column(
              children: <Widget>[
                new Expanded(
                    child: new Container(
                  color: Color(0xffd2691e),
                )),
                new Expanded(
                    child: new Container(
                  color: Color(0xff969696),
                )),
              ],
            )),
            new Expanded(
                child: new Column(
              children: <Widget>[
                new Expanded(
                    child: new Container(
                  color: Color(0x80ffd700),
                )),
                new Expanded(
                    child: new Container(
                  color: Color(0x80ffc0cb),
                )),
              ],
            ))
          ],
        ),
      ),

      ///导购员
      new Container(
        margin: EdgeInsets.only(top: 1),
        height: 50,
        child: new Row(
          children: <Widget>[
            new Expanded(
                child: new Container(
              color: Color(0xffff00ff),
            )),
            new Expanded(
                child: new Container(
              color: Color(0x80ff00ff),
            )),
          ],
        ),
      ),

      ///备注
      new Container(
        margin: EdgeInsets.only(top: 1),
        height: 50,
        child: new Row(
          children: <Widget>[
            new Expanded(
                child: new Container(
              color: Color(0xffff8800),
            )),
            new Expanded(
                child: new Container(
              color: Color(0x80008b8b),
            )),
          ],
        ),
      ),

      ///应收款
      new Container(
        height: 50,
        color: Color(0x80ffa500),
        margin: EdgeInsets.only(top: 1),
        alignment: Alignment.centerRight,
        child: new Container(
          height: 40,
          width: 200,
          color: Color(0xffd2691e),
        ),
      )
    ],
  );
}

Widget _widgetFoot() {
  return new Container(
    height: 50,
    color: Colors.deepOrangeAccent,
  );
}
