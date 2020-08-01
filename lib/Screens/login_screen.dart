import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //Background
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff06beb6), Color(0xff48b1bf)])),
        child: Center(
            child: ClipRRect(
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
                  Padding(
                    //Email form
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        icon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  Padding(
                    //Password form
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Password', icon: Icon(Icons.vpn_key)),
                    ),
                  ),
                  ButtonBar(
                    //Main buttons
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text('Create account',
                              style: TextStyle(color: Colors.white)),
                          color: Color(0xff48b1bf),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Color(0xff48b1bf),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
