//交互 改变widget状态
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  CounterState createState() => new CounterState();
}

class CounterState extends State<Counter> {
  int number = 0;

  void setAdd() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return new Container(
//        color: Colors.white,
//        child: new Column(
//          children: <Widget>[
//            new Container(
//                margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
//                child: new Center(
//                  child: new Text('$number'),
//                )),
//            new RaisedButton(
//              onPressed: setAdd,
//              textColor: Colors.deepOrange,
//              child: new Text('点点我试试'),
//            )
//          ],
//        ));

//    return new Column(
//      children: <Widget>[
//        new CounterDisplay(count: number,),
//        new CounterIncrementor(onBtnCallback: setAdd,)
//      ],
//    );

    return Scaffold(
      appBar: new AppBar(
        title: new Text('博派万岁'),
      ),
      body: new Container(
          margin: EdgeInsets.fromLTRB(100, 100, 0, 0),
          child: new Column(
            children: <Widget>[
               CounterDisplay(
                count: number,
              ),
               CounterIncrementor(
                onBtnCallback: setAdd,
              )
            ],
          )),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text('赛博坦: $count');

//  return new Scaffold(
//    appBar: new AppBar(
//      title: new Text('博派万岁'),
//
//    ),
//    body: new Column(
//      children: <Widget>[
//        new Text('赛博坦: $count')
//      ],
//    ),
//  );
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onBtnCallback});

  final VoidCallback onBtnCallback;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(
      onPressed: onBtnCallback,
      child: new Text('博派万岁'),
    );
  }
}

//class Counter extends StatefulWidget {
//  CounterStateful createState() => new CounterStateful();
//}
//
//class CounterStateful extends State<Counter> {
//  int _counter = 0;
//
//  void setAdd() {
//    setState(() {
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Container(
//        child: new Row(
//      children: <Widget>[
//        new RaisedButton(
//          onPressed: setAdd,
//          child: new Icon(Icons.add),
//        ),
//
////        new Text('Count: $_counter')
//
//         new Container(
//           color: Colors.blue,
//           child: new Text('Count: $_counter')
//         )
//      ],
//    ));
//  }
//}
