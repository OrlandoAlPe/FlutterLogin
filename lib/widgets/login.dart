import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainLogin extends StatefulWidget {
  @override
  _MainLoginState createState() => _MainLoginState();
}

class _MainLoginState extends State<MainLogin> {
  //login with firebase function
  void _signInWithEmailAndPassword() async {
    final FirebaseUser user = (await _auth.signInWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text))
        .user;
  if (user != null) {
    setState(() {
      _success = true;
      _userEmail = user.email;
    });
  } else {
    setState(() {
      _success = false;
    });
  }
  
  }

  //firbase instance
  FirebaseAuth _auth = FirebaseAuth.instance;
  // form controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //form key
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  //utils
  bool _success;
  String _userEmail;
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
              Form(
                  key: _formkey,
                  child: Column(children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                            //Email form
                            controller: _emailController,
                            validator: (String val) {
                              if (val.isEmpty ||
                                  !val.contains('@') ||
                                  val.contains(' ')) {
                                return 'Please enter a valid email';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                                labelText: 'Email',
                                icon: Icon(Icons.mail_outline)))),
                    Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                            //Password form
                            validator: (String val) {
                              if (val.isEmpty) {
                                return 'Please enter a password';
                              } else {
                                return null;
                              }
                            },
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                icon: Icon(Icons.lock_outline))))
                  ])),
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
                    child: RaisedButton(
                      onPressed: () async {
                        if (_formkey.currentState.validate()) {
                          _signInWithEmailAndPassword();
                        }
                      },
                      child:
                          Text('Login', style: TextStyle(color: Colors.white)),
                      color: Color(0xff48b1bf),
                    ),
                  ),
                  Container(
                    child: Text(_success == null ? ' ' : (_success ? 'Successfully logged in '+ _userEmail: 'Registration failed')),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
