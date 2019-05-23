import 'package:flutter/material.dart';
import 'package:flutter_app_practice/mama/demo/bean/mobile_payment_bean.dart';
import 'package:flutter_app_practice/mama/demo/dialog/mobile_payment_dialog.dart';
import 'package:flutter_app_practice/mama/demo/mobile_payment_view.dart';

///数据
List<PayUserBean> listPayShopBean = new List<PayUserBean>();

class MobilePaymentView_2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    setPayLiatBean();
    return MobilePaymentContent();
  }
}

class MobilePaymentContent extends State<MobilePaymentView_2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: new Text(
            '收款',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
        ),

        ///使用有效的上下文
        body: Builder(builder: (BuildContext mContext) {
          return _widgetBodyReceipt(this, mContext);
        }));
  }
}

///身体组合
Widget _widgetBodyReceipt(MobilePaymentContent paymentCovariant, BuildContext context) {
  return new Column(
    children: <Widget>[
      _widgetChest(),
      _widgetBottomReceipt(paymentCovariant, context),
    ],
  );
}

/// 1-1 胸部
Widget _widgetChest() {
  return new Expanded(
      child: new SingleChildScrollView(
        child: new Container(
          child: new Column(
            children: <Widget>[
              _widgetHeadPortrait(),
              _widgetList(),
              _widgetIntegral(),
              _widgetGuideNote(),
            ],
          ),
        ),
      ));
}

///导购 备注 应收款
Widget _widgetGuideNote() {
  return new Container(
    margin: EdgeInsets.only(top: 1, left: 10, right: 10),
    child: Column(
      children: <Widget>[
        ///导购员
        new Container(
          height: 50,
          color: Colors.white,
          child: new Row(
            children: <Widget>[
              new Text(
                '导购员',
                style: TextStyle(color: Color.fromRGBO(52, 56, 77, 1)),
              ),
              new Expanded(
                  child: new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      '选择导购员',
                      style: TextStyle(
                          color: Color.fromRGBO(168, 171, 184, 1),
                          fontSize: 12),
                    ),
                    new Container(
                      height: 14,
                      child: new Image.asset(
                        'assets/images/ic_to_right.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),

        ///备注
        new Container(
          margin: EdgeInsets.only(top: 1),
          height: 50,
          color: Colors.white,
          child: new Row(
            children: <Widget>[
              new Text(
                '备注',
                style: TextStyle(color: Color.fromRGBO(52, 56, 77, 1)),
              ),
              new Expanded(
                  child: new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      '填写备注信息',
                      style: TextStyle(
                          color: Color.fromRGBO(168, 171, 184, 1),
                          fontSize: 12),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),

        ///应收款
        new Container(
            color: Colors.white,
            height: 50,
            margin: EdgeInsets.only(top: 1),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Text('共2件商品 应收款： '),
                new Text(
                  '￥897.00',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 118, 103, 1),
                  ),
                )
              ],
            ))
      ],
    ),
  );
}

setPayLiatBean() {
  listPayShopBean.clear();
  listPayShopBean.add(PayUserBean('MUTUKI纸尿裤钻石版', '￥80.00', '白色,L', 'x2'));
  listPayShopBean.add(PayUserBean('MUTUKI纸尿裤铂金版', '￥60.00', '50片', 'x6'));
//  listPayShopBean.add(PayUserBean('MUTUKI纸尿裤铂金版', '￥60.00', '50片', 'x6'));
//  listPayShopBean.add(PayUserBean('MUTUKI纸尿裤铂金版', '￥60.00', '50片', 'x6'));
//  listPayShopBean.add(PayUserBean('MUTUKI纸尿裤铂金版', '￥60.00', '50片', 'x6'));
//  listPayShopBean.add(PayUserBean('MUTUKI纸尿裤铂金版', '￥60.00', '50片', 'x6'));
}

Widget _widgetList() {
  return new Container(
    margin: EdgeInsets.only(top: 10),
    child: new ListView.separated(

        ///解决ListView 充满布局问题
        shrinkWrap: true,
        ///禁用滑动
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        // 添加分割线
        separatorBuilder: (BuildContext context, int index) =>
            Divider(height: 1.0, color: Color.fromRGBO(230, 233, 235, 1)),
        itemCount: listPayShopBean.length,
        itemBuilder: (context, idx) {
          return _widgetItme(idx, context);
        }),
  );
}

///积分
Widget _widgetIntegral() {
  return new Container(
    color: Colors.white,
    margin: EdgeInsets.only(top: 5, left: 10, right: 10),
    height: 66,
    child: new Row(
      children: <Widget>[
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _widgetText('本次赠送积分'),
            _widgetText('优惠'),
          ],
        ),
        new Expanded(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _widgetText('10'),
            _widgetText('￥10.00'),
          ],
        ))
      ],
    ),
  );
}

Widget _widgetText(String s) {
  return new Text(
    s,
    style: new TextStyle(color: Color.fromRGBO(99, 103, 122, 1)),
  );
}

Widget _widgetItme(int idx, BuildContext context) {
  return new Container(
    color: Colors.white,
    height: 60,
    margin: EdgeInsets.only(left: 10, right: 10),
    child: new Row(
      children: <Widget>[
        ///商品名 规格
        new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              listPayShopBean[idx].shopName,
              style: TextStyle(fontSize: 16),
            ),
            new Text(listPayShopBean[idx].specification),
          ],
        ),

        ///价钱 数量
        new Expanded(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(listPayShopBean[idx].money),
            new Text(listPayShopBean[idx].quantity),
          ],
        )),
      ],
    ),
  );
}

/// 1-1-1
Widget _widgetHeadPortrait() {
  return new Container(
    height: 70,
    margin: EdgeInsets.only(top: 5),
    color: Colors.white,
    child: new Stack(
      alignment: Alignment.center,
      children: <Widget>[
        new Row(
          children: <Widget>[
            ///头像
            new Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(left: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/share_qq.png'),
              ),
            ),

            ///姓名和会员
            _widgetNmae()
          ],
        ),
        _widgetPhone()
      ],
    ),
  );
}

Widget _widgetPhone() {
  return new Container(
    alignment: Alignment.centerRight,
    child: new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Text('17681952933'),
          new Container(
            height: 14,
            child: new Image.asset(
              'assets/images/ic_to_right.png',
              fit: BoxFit.scaleDown,
            ),
          )
        ],
      ),
    ),
  );
}

Widget _widgetNmae() {
  return Container(
    margin: EdgeInsets.only(left: 5),
    child: new Column(
      children: <Widget>[
        new Expanded(
          child: new Container(
            margin: EdgeInsets.only(bottom: 5),
            alignment: Alignment.bottomCenter,
            child: new Text('周小芳'),
          ),
          flex: 1,
        ),
        new Expanded(
          child: new Wrap(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(73, 175, 249, 1),
                ),
                child: new Text('钻石VIP'),
              )
            ],
          ),
          flex: 1,
        )
      ],
    ),
  );
}

///脚部
Widget _widgetBottomReceipt(
    MobilePaymentContent paymentCovariant, BuildContext context) {
  return new Container(
    alignment: Alignment.bottomCenter,
    child: new Container(
      height: 50,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          ///选中 打印发票
          new Expanded(
            child: _widgetCheckbox(paymentCovariant),
            flex: 3,
          ),

          ///按钮退款
          new Expanded(
            child: _widgetCollectionOnTap(paymentCovariant, context),
            flex: 1,
          )
        ],
      ),
    ),
  );
}

///打印发票部分
bool isCheck = false;

Widget _widgetCheckbox(MobilePaymentContent covariant) {
  return new Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      new Checkbox(
          activeColor: Color.fromRGBO(255, 97, 105, 1),
          value: isCheck,
          onChanged: (bool bol) {
            covariant.setState(() {
              isCheck = bol;
            });
          }),
      new Text(
        '打印发票',
        style: TextStyle(color: Color.fromRGBO(52, 56, 77, 1)),
      )
    ],
  );
}

///按钮收款
Widget _widgetCollectionOnTap(
    MobilePaymentContent paymentCovariant, BuildContext context) {
  /// Container响应点击事件
  /// Material - InkWell - Container
  return new Material(
      color: Color.fromRGBO(255, 97, 105, 1),
      child: new InkWell(
          onTap: () {
            showPayDialog(context);
          },
          child: new Container(
            alignment: Alignment.center,
            height: double.infinity,
            child: new Text(
              '收款',
              style: TextStyle(color: Colors.white),
            ),
          )));
}
