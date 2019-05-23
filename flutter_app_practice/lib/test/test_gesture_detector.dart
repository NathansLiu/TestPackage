//处理手势 什么几把东西 手指按下不动再抬起则会打印  一栋就没
import 'package:flutter/material.dart';

//void main(){
//  runApp(new MaterialApp(
//  home: new GestureDetectorTest(),
//  ));
//}

//void main(){
//  runApp(new GestureDetectorTest());
//}

class GestureDetectorTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: (){
        print("赛博坦");
      },
      child: new Container(
        height: 36,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          color: Colors.lightGreen[50],
        ),
        child: new Center(
          child: new Text('Engage'),
        ),
      ),
    );
  }
  
}