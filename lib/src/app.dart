import 'package:flutter/material.dart';
import 'package:shopping_cart/src/ui/login.dart';
import 'package:shopping_cart/src/utils/strings.dart';

class ShoppingCartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: ThemeData.light(),
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}