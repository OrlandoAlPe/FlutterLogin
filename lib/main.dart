import 'package:flutter/material.dart';
import 'package:tasks/Screens/Main_tasks_screen.dart';
import 'package:tasks/Screens/login_screen.dart';
import 'package:tasks/Screens/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color(0xff06beb6),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      routes: {
        '/': (context) => LoginScreen(),
        '/Main-Menu': (context) => TasksMenu(),
        '/create-account' : (context) => Registry(),
      },
    );
  }
}
