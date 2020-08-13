import 'package:flutter/material.dart';
//import 'package:tasks/Screens/Main_tasks_screen.dart';
import 'package:tasks/widgets/login.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  //  if (true) {
      return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff06beb6), Color(0xff48b1bf)])),
        child: Center(
          child: MainLogin(),
        ),
      ),
    );
    /*}  else {
     return TasksMenu();
    }*/
    
    
  }
}
