import 'package:flutter/material.dart';

class MainLogin extends StatefulWidget {
  @override
  _MainLoginState createState() => _MainLoginState();
}

class _MainLoginState extends State<MainLogin> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //Login Area
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 350,
        height: 400,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('T   A   S   K   S',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              Padding(
                  //Email form
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Email', icon: Icon(Icons.mail_outline)))),
              Padding(
                  //Password form
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          icon: Icon(Icons.lock_outline)))),
              ButtonBar(
                //Main buttons
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(11),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/create-account');
                          },
                          child: Text('Create account',
                              style: TextStyle(color: Colors.white)),
                          color: Color(0xff48b1bf))),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(11),
                    child: FlatButton(
                      onPressed: () {},
                      child:
                          Text('Login', style: TextStyle(color: Colors.white)),
                      color: Color(0xff48b1bf),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
