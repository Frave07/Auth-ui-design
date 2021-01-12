import 'package:flutter/material.dart';

import 'package:auth_ui/Pages/Login.dart';
import 'package:auth_ui/Pages/Register.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'login'    : (_) => LoginPage(),
        'register' : (_) => RegisterPage(),
      },
    );
  }
}