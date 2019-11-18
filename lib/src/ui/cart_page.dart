import 'package:catalog_app_provider/src/utils/cart_provider.dart';
import 'package:catalog_app_provider/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final CartProvider _cart = Provider.of<CartProvider>(context);
    print(_cart.myCart.length);
    print(_cart.myCart[0]);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text('Cart',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24)),
        centerTitle: true,
        backgroundColor: millennialPink,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12),
        child: ListView.builder(
            itemCount: _cart.myCart.length,
            itemBuilder: (BuildContext context, int i) {
              return ListTile(
                leading: CircleAvatar(
                    child: Text((i + 1).toString(), style: TextStyle(color: Colors.white),),
                    backgroundColor: millennialPink,
                ),
                title: Text(_cart.myCart[i]),
              );
            }),
      ),
    );
  }
}
