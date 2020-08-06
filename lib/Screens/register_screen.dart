import 'package:flutter/material.dart';
import 'package:tasks/widgets/registry.dart';

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
      body: RegistryWidget()
    );
  }
}
