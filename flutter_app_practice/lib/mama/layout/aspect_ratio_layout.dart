import 'package:flutter/material.dart';

//布局等比例布局 ：根据布局方向除去可绘制自身大小外，其他皆可等比例
//等比例布局正确嵌套 ： Scaffold - Container - Column/Row - Expanded
class AspectRatioWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AspectRatioWidget();
  }
}

class _AspectRatioWidget extends State<AspectRatioWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('等比例布局'),
      ),
      body: new Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: 20),
        child: new Column(
          children: <Widget>[
            new Text('横向比例'),
            new Expanded(
              child: new Container(
                margin: EdgeInsets.only(top: 10),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        color: Colors.blueGrey,
                      ),
                      flex: 1,
                    ),
                    new Expanded(
                      child: new Container(
                        color: Colors.white,
                      ),
                      flex: 1,
                    ),
                    new Expanded(
                      child: new Container(
                        color: Colors.blueGrey,
                      ),
                      flex: 1,
                    ),
                  ],
                ),
              ),
              flex: 1,
            ),
           new Container(
             margin: EdgeInsets.only(top: 10,bottom: 10),
             child: new Text('柱状'),
           ),
            _expanded(Colors.deepOrange, 1),
            _expanded(Colors.red, 1),
            _expanded(Colors.pink, 1),
            _expanded(Colors.pinkAccent, 1),
          ],
        ),
      ),
    );
  }
}

Expanded _expanded(Color _color, int i) {
  return new Expanded(
    child: new Container(
      color: _color,
    ),
    flex: i,
  );
}
