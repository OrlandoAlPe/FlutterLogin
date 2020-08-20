import 'package:flutter/material.dart';

class TasksMenu extends StatefulWidget {
  @override
  _TasksMenuState createState() => _TasksMenuState();
}

class _TasksMenuState extends State<TasksMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Main menu',style: TextStyle(color: Colors.white),),
      ),
      body: Text('Logged in'),
    );
  }
}
