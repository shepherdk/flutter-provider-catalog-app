import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{
  List myCart = [];

  void add(item) {
    myCart.add(item);
  }

  void remove(index) {
    myCart.removeAt(index);
  }
}