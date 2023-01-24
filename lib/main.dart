import 'package:flutter/material.dart';
import 'package:prep_smart/screen/login.dart';
import 'package:prep_smart/screen/onboardScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  final prefs = await SharedPreferences.getInstance();
   final showLogin=prefs.getBool('showLogin') ?? false;
  runApp( MyApp(showLogin: showLogin ));
}

class MyApp extends StatelessWidget {
  final bool showLogin;
  const MyApp({super.key, required this.showLogin});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(debugShowCheckedModeBanner: false,
      home:showLogin ? const Login(): const Onbording(),
    );
  }
}
