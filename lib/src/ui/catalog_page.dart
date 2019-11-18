import 'package:catalog_app_provider/src/utils/cart_provider.dart';
import 'package:catalog_app_provider/src/utils/colors.dart';
import 'package:catalog_app_provider/src/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';

class CatalogPage extends StatefulWidget {
  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('Catalog', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () => Navigator.of(context).pushNamed(Strings.cartRoute),
          ),
        ],
        backgroundColor: millennialPink,
//        elevation: 0,
      ),
      body: CatalogBody(),
    );
  }
}

class CatalogBody extends StatefulWidget {
  @override
  _CatalogBodyState createState() => _CatalogBodyState();
}

class _CatalogBodyState extends State<CatalogBody> {
  int _count = 1;
//  List _cart = [];
  List _isTickedList = List.generate(nouns.length, (i) => false);

  @override
  Widget build(BuildContext context) {
    final CartProvider _cart = Provider.of<CartProvider>(context);

    return ListView.builder(
      itemCount: nouns.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (BuildContext context, int i) {
        return ListTile(
          leading: Container(
            // loop through the colors list, from index 0 up to but not including list.length
            // the remainder i % list.length will range from 0 - list.length
            color: colors[i % colors.length],
            height: 32,
            width: 32,
          ),
          title: Text(nouns[i][0].toUpperCase() + nouns[i].substring(1)),
          trailing: FlatButton(
              onPressed: () {
                if (!_isTickedList[i])
                setState(() {
                  _isTickedList[i] = !_isTickedList[i];
                  _cart.add(nouns[i][0].toUpperCase() + nouns[i].substring(1));
                  print(_cart.myCart.length);
                });
              },
              child: _isTickedList[i]? Icon(Icons.check) : Text('ADD'),
          ),
        );
      },
    );
  }
}

