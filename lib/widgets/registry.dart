import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistryWidget extends StatefulWidget {
  @override
  _RegistryWidgetState createState() => _RegistryWidgetState();
}

//firbase instance
FirebaseAuth _auth = FirebaseAuth.instance;

//email and passworf validation key
final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

//text field controllers
final TextEditingController _emailContoller = TextEditingController();
final TextEditingController _passwordContoller = TextEditingController();

//Keep track of the state for the screen
bool _success;
String _userEmail;

class _RegistryWidgetState extends State<RegistryWidget> {
  //register user with email & password with firebase
  void _register() async {
    final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
            email: _emailContoller.text, password: _passwordContoller.text))
        .user;
    if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user.email;
      });
    } else {
      setState(() {
        _success = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(15),
                child: Column(children: <Widget>[
                  TextFormField(
                      controller: _emailContoller,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please Enter an email.';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Email', icon: Icon(Icons.mail_outline))),
                  TextFormField(
                      obscureText: true,
                      controller: _passwordContoller,
                      validator: (String value) {
                        if (value.length < 6) {
                          return 'Please enter a password with at least 5 characters.';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Password', icon: Icon(Icons.vpn_key)))
                ])),
            RaisedButton(
              child: Text('Sign up', style: TextStyle(color: Colors.white)),
              color: Theme.of(context).primaryColor,
              onPressed: () async {
                if (_formkey.currentState.validate()) {
                  _register();
                }
              },
            ),
            Container(
              alignment: Alignment.center,
              child: Text(_success == null
                  ? ''
                  : (_success
                      ? 'Successfully registered ' + _userEmail
                      : 'Registration failed')),
            )
          ],
        ),
      ),
    );
  }
}
