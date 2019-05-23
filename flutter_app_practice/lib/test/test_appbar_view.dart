import 'package:flutter/material.dart';

class BasicAppBarSample extends StatefulWidget {
  _BasicAppBarSampleState createState() => new _BasicAppBarSampleState();
}

class _BasicAppBarSampleState extends State<BasicAppBarSample> {
  Choice _selectedChoice = choicesList[0];

  void _select(Choice mChoice) {
    setState(() {
      _selectedChoice = mChoice;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('博派万岁'),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(choicesList[0].icon),
                onPressed: () {
                  _select(choicesList[0]);
                }),
            new IconButton(
                icon: new Icon(choicesList[1].icon),
                onPressed: () {
                  _select(choicesList[1]);
                }),
            new PopupMenuButton<Choice>(
                onCanceled: null,
                onSelected: _select,
                itemBuilder: (BuildContext context) {
                  return choicesList.skip(2).map((Choice choice) {
                    return new PopupMenuItem<Choice>(
                      child: new Text(choice.title),
                      value: choice,
                    );
                  }).toList();
                })
          ],
        ),
        body: new Padding(
          padding: const EdgeInsets.all(16),
          child: new ChoiceCard(choice: _selectedChoice,),
        ),
      ),
    );
  }
}

class Choice {
  final String title;
  final IconData icon;

  const Choice({this.title, this.icon});
}

const List<Choice> choicesList = const <Choice>[
  const Choice(title: '超级赛亚人', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  final Choice choice;

  const ChoiceCard({Key key, this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(
              choice.icon,
              size: 128.0,
              color: textStyle.color,
            ),
            new Text(
              choice.title,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
