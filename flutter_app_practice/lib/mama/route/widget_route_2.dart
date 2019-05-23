import 'package:flutter/material.dart';

String title;

class RouteNewView extends StatefulWidget {
  String content;

  //其构造方法接受上个页面数据传输
  RouteNewView(this.content);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    if (content == null) {
      title = 'HuangShan.安徽';
    } else {
      title = content;
    }
    return _RouteNewView();
  }
}

class _RouteNewView extends State<RouteNewView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          new Container(
            margin: EdgeInsets.all(100),
            child: new Text(
              title,
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
          new Center(
            child: new MaterialButton(
                child: new Text('BACK'),
                onPressed: () {
                  Navigator.pop(context, "黑客帝国");
                }),
          )
        ],
      ),
    );
  }
}
