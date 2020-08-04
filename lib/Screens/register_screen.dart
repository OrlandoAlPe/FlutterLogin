import 'package:flutter/material.dart';

class Registry extends StatefulWidget {
  @override
  _RegistryState createState() => _RegistryState();
}

class _RegistryState extends State<Registry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text('Create account', style: TextStyle(color: Colors.white)),
          backgroundColor: Theme.of(context).primaryColor),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(15),
                child: Column(children: <Widget>[
                  TextField(
                      decoration: InputDecoration(
                          labelText: 'Email', icon: Icon(Icons.mail_outline))),
                  TextField(
                      decoration: InputDecoration(
                          labelText: 'Password', icon: Icon(Icons.vpn_key)))
                ])),
            RaisedButton(
                child: Text('Done!', style: TextStyle(color: Colors.white)),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
