import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      constraints: BoxConstraints.expand(
        height: Theme.of(context).textTheme.display1.fontSize * 1.1,
      ),
      padding: const EdgeInsets.all(8.0),
      color: Colors.teal.shade700,
      alignment: Alignment.centerRight,
      child: Text('Hello World',
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(color: Colors.white)),
//      foregroundDecoration: BoxDecoration(
//        image: DecorationImage(
//          image: NetworkImage('https://ss3.baidu.com/9fo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=eb2a0d90c311728b2f2d8a22f8fcc3b3/eac4b74543a98226f5d6a9268482b9014a90eb98.jpg'),
//          centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
//        ),
//      ),
//      transform: Matrix4.rotationZ(0.1),
    );
  }
}

class RowView_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        const Text.rich(TextSpan(
          text: 'Hello', // default text style
          children: <TextSpan>[
            TextSpan(
                text: ' beautiful ',
                style: TextStyle(fontStyle: FontStyle.italic)),
            TextSpan(
                text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ))
      ],
    );
  }
}

class RaisedButtonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new RaisedButton(
              onPressed: null,
              child: const Text('Disabled Button'),
            ),
            new RaisedButton(
              onPressed: setAdd,
              child: new Text('Enabled Button'),
            ),
            new RaisedButton(
              onPressed: setAdd,
              textColor: Colors.white,
              padding: const EdgeInsets.all(0),
              child: new Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Colors.red,
                  Colors.green,
                  Colors.blue
                ])),
                padding: const EdgeInsets.all(10.0),
                child: new Text('Gradient Button'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void setAdd() {}
/**
 * Scaffold
 */
class ScaffoldView extends StatefulWidget {
  MyScaffoldView createState() => new MyScaffoldView();
}

class MyScaffoldView extends State<ScaffoldView> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('赛博坦'),
      ),
      body: new Center(
        child: new Text('You have pressed the button $_count times.'),
      ),
      bottomNavigationBar: new BottomAppBar(
        child: new Container(
          height: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
                _count++;
              }),
      tooltip: 'Increment Counter',
      child: new Icon(Icons.add),),
      floatingActionButtonLocation:  FloatingActionButtonLocation.centerDocked,
    );
  }
}
