import 'package:catalog_app_provider/src/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/strings.dart';

//scaffold
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 42),
        child: ListView(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                border: UnderlineInputBorder(),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.yellow)),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: UnderlineInputBorder(),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.yellow)),
              ),
              obscureText: true,
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () => setState(() {
                    Navigator.pushNamed(context, Strings.catalogRoute);
                  }),
                  child: Center(child: Text('ENTER', style: TextStyle(color: Colors.black))),
                  color: millennialPink,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
