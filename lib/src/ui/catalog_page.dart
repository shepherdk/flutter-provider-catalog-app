import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/painting.dart';

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
            onPressed: () => setState(() {
              //
            }),
          ),
        ],
        backgroundColor: Colors.yellowAccent,
//        elevation: 0,
      ),
      body: CatalogBody(),
    );
  }
}

class CatalogBody extends StatefulWidget {
  @override
  _CatalogBodyState createState() => _CatalogBodyState();
  final List<Color> _colors = [
    Colors.red,
    Colors.red[100],
    Colors.redAccent,
    Colors.orange,
    Colors.orange[100],
    Colors.orangeAccent,
    Colors.yellow,
    Colors.yellow[100],
    Colors.yellowAccent,
    Colors.green,
    Colors.green[100],
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.indigo,
    Colors.indigo[100],
    Colors.indigoAccent,
    Colors.teal,
    Colors.teal[100],
    Colors.tealAccent,
  ];
}

class _CatalogBodyState extends State<CatalogBody> {
  int _count = 0;
  List _cart = [];
  List _boolTile = List.generate(nouns.length, (i) => false);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: nouns.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (BuildContext context, int i) {
        _count += 1;
        if (_count >= widget._colors.length) {
          _count = 0;
        }
        return ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: Container(
            color: widget._colors[_count],
            height: 32,
            width: 32,
          ),
          title: Text(nouns[i][0].toUpperCase() + nouns[i].substring(1)),
          trailing: FlatButton(
              onPressed: () => setState(() {
                _cart.add(nouns[i][0].toUpperCase() + nouns[i].substring(1));
                _boolTile[i] = !_boolTile[i];
                print('gggg ${_boolTile[i]}');
                print(i);
              }),
              child: _boolTile[i]? Icon(Icons.check) : Text('ADD'),
          ),
        );
      },
    );
  }
}

