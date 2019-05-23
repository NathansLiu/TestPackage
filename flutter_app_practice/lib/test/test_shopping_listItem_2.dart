import 'package:flutter/material.dart';
import 'package:flutter_app_practice/test/test_shopping_listItem_1.dart';

class ShoppingList extends StatefulWidget {
  final List<Product> products;

  const ShoppingList({Key key, this.products}) : super(key: key);

  _ShoppingListState createState() => new _ShoppingListState();
}

void init(){
  new ShoppingList(
    products: <Product>[
      new Product(name: '赛博坦'),
      new Product(name: '那美克'),
      new Product(name: '赛亚星'),
    ],
  );
}



class _ShoppingListState extends State<ShoppingList> {

  Set<Product> _shoppingCart = new Set<Product>();

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shopping List'),
      ),
      body: new ListView(
        padding: new EdgeInsets.symmetric(
          vertical: 8,
        ),
        children: widget.products.map((Product product) {
          return new ShoppingListItem(
              mProduct: product,
              inCart: _shoppingCart.contains(product),
              cartChangedCallback: _handleCartChanged);
        }).toList()
      ),
    );
  }
}
