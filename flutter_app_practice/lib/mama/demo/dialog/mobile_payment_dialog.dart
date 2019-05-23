import 'package:flutter/material.dart';

void showPayDialog(BuildContext context) {
  showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return new Container(
          height: 200,
          color: Colors.white,
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: <Widget>[
              new Expanded(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text('收款：'),
                    new Text(
                      '￥280.00',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 97, 105, 1),
                      ),
                    )
                  ],
                ),
                flex: 1,
              ),
              new Expanded(
                child: new Container(
                  color: Color.fromRGBO(242, 245, 247, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      _widgetRotunda('现金', 'assets/images/ic_wallet.png'),
                      _widgetRotunda('微信支付', 'assets/images/ic_wechat_pay.png'),
                      _widgetRotunda('支付宝支付', 'assets/images/ic_ali_pay.png'),
                      _widgetRotunda('银行卡', 'assets/images/ic_ unionpay.png'),
                      _widgetRotunda(
                          '会员卡', 'assets/images/ic_membership_card.png'),
                    ],
                  ),
                ),
                flex: 3,
              ),
              new Expanded(
                child: new Container(
                  alignment: Alignment.center,
                  child: new Text('组合支付 >'),
                ),
                flex: 1,
              ),
            ],
          ),
        );
      });
}

///圆形装饰器
Widget _widgetRotunda(String name, String imageUrl) {
  return new Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[

        new Container(
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: new Image.asset(
            'assets/images/avatar2.png',

          ),
        ),
        new Container(
          margin: EdgeInsets.only(top: 8),
          child: new Text(name),
      )
    ],
  );
}
