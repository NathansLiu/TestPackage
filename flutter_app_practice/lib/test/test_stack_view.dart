import 'package:flutter/material.dart';

void main(){
  runApp(new StackView());
}

class StackView extends StatefulWidget{


  StackView_ createState() => new StackView_();

}


class StackView_ extends State<StackView>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      width: 250,
      height: 250,
      child: new Stack(
        children: <Widget>[
          new Container(
            width: 250,
            height: 250,
            color: Colors.white,
          ),

          new Container(
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black.withAlpha(0),
                    Colors.black12,
                    Colors.black45
                  ])
            ),
          )
        ],
      ),
    );
  }

}