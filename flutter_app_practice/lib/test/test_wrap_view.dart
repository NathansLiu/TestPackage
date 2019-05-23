import 'package:flutter/material.dart';

void main() {
  runApp(new WrapView());
}

class WrapView extends StatefulWidget {
  WrapStateView createState() => new WrapStateView();
}

class WrapStateView extends State<WrapView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: <Widget>[
        new Chip(
          label: new Text('赛博坦'),
          avatar: CircleAvatar(
            backgroundColor: Colors.blue.shade900,
            child: new Text('AH'),
          ),
        ),
        new Chip(
          label: new Text('那美克'),
          avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
          label: Text('Mulligan'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('JL')),
          label: Text('Laurens'),
        ),
      ],
    );
  }
}
