import 'package:flutter/material.dart';
//实现紧贴底部：Column - 按比例分
class SpecifiedLocationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SpecifiedLocationWidget();
  }
}

class _SpecifiedLocationWidget extends State<SpecifiedLocationWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('指定位置'),
      ),
      body: new Container(
        width: double.infinity,
        child: new Column(
          children: <Widget>[
            new Expanded(
              child: _container(Colors.white30),
              flex: 9,
            ),
            new Expanded(
              child: new Container(
                color: Colors.grey,
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

Container _container(Color color) {
  return new Container(
    color: color,
    height: 50,
    width: 50,
  );
}
