import 'package:catalog_app_provider/src/ui/cart_page.dart';
import 'package:catalog_app_provider/src/ui/catalog_page.dart';
import 'package:catalog_app_provider/src/ui/login_page.dart';
import 'package:flutter/material.dart';

import 'utils/strings.dart';

class CatalogApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        Strings.loginRoute: (BuildContext context) => LoginPage(),
        Strings.catalogRoute: (BuildContext context) => CatalogPage(),
        Strings.cartRoute: (BuildContext context) => CartPage(),
      },
    );
  }
}
//static Route<dynamic> generateRoute(RouteSettings settings) {
//switch (settings.name) {
//case '/':
//return MaterialPageRoute(builder: (_) => Home());
//case '/feed':
//return MaterialPageRoute(builder: (_) => Feed());
//default:
//return MaterialPageRoute(
//builder: (_) => Scaffold(
//body: Center(
//child: Text('No route defined for ${settings.name}')),
//));
//}
//}