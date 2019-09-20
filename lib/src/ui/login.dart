import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: (MediaQuery.of(context).size.width * 0.1),
          left: (MediaQuery.of(context).size.width * 0.1)),
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.35),
          // TODO Center this using Align or Positioned MediaQuery.of(context).size.width * 0.65
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.title,
              ),
            ],
          ),
          SizedBox(height: 36),
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          SizedBox(height: 12),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () => {},
                child: Text('ENTER'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
