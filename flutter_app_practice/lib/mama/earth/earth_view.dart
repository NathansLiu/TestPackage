import 'package:flutter/material.dart';
import 'package:flutter_app_practice/mama/util/view_style.dart';

class EarthView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EarthViewBody();
  }
}

class EarthViewBody extends State<EarthView> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('评分最高'),
      ),
      body: new Container(
        width: double.infinity,
        height: 170,
        child: new Card(
          margin: EdgeInsets.all(10),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: _ContainerPosters(),
                flex: 1,
              ),
              new Expanded(
                child: _IntroductionWidget(),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//海报
Widget _ContainerPosters() {
  return new Container(
    margin: EdgeInsets.all(4),
    color: Colors.grey,
    child: new ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: new Image.network(
        'https://img3.doubanio.com//view//photo//s_ratio_poster//public//p2545472803.webp',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    ),
  );
}

//简介
// ignore: non_constant_identifier_names
Widget _IntroductionWidget() {
  return new Container(
    margin: EdgeInsets.all(4),
    child: new Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(
            alignment: Alignment.centerLeft,
           child: new Text('流浪地球',style: TextStyle(
             color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold
           ),),
         ),


        new Expanded(
          child: _textView('豆瓣评分：7.9',Colors.black12),

        ),
        new Expanded(
          child: _textView('类型：科幻、太空、灾难',Colors.black12),

        ),
        new Expanded(
          child: _textView('导演：郭帆',Colors.black12),

        ),
        new Expanded(
          child: new Row(
            children: <Widget>[
              Text('主演：',style: TextStyle(
                fontSize: 18,
                color: Colors.black
              ),),
              _circleAvatarWidget('https://img3.doubanio.com//view//celebrity//s_ratio_celebrity//public//p1533348792.03.webp'),
              _circleAvatarWidget('https://img3.doubanio.com//view//celebrity//s_ratio_celebrity//public//p1501738155.24.webp'),
              _circleAvatarWidget('https://img3.doubanio.com//view//celebrity//s_ratio_celebrity//public//p1540619056.43.webp'),
            ],
          ),
          flex: 2,
        ),
      ],
    ),
  );
}
Widget _circleAvatarWidget(String url){
  return new Expanded(child: new Container(
    alignment: Alignment.center,
    child: CircleAvatar(
      backgroundImage: NetworkImage(url),
    ),
  ),flex: 1,);
}


Widget _textView(String t, Color color) {
  return new Text(
    t,
    style: TextStyle(color: color,fontSize: 18),
  );
}



