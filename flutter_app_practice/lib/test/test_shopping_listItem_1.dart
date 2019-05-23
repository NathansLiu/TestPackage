import 'package:flutter/material.dart';

class Product {
  const Product({this.name});
  final String name;
}

typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  final Product product;
  final bool inCart;
  final CartChangedCallback cartChangedCallback;

  ShoppingListItem({Product mProduct, this.inCart, this.cartChangedCallback})
      : this.product = mProduct,
        super(key: new ObjectKey(mProduct));

  Color _getColor(BuildContext context) {
    return inCart? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context){
    if(!inCart) return null;

    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListTile(
    onTap: (){
      cartChangedCallback(product,!inCart);
    },
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.name[0]),
      ),
      title: new Text(product.name,style: _getTextStyle(context),),
    );
  }
}
