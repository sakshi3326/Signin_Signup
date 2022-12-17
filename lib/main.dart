import 'package:flutter/material.dart';
import 'package:signin_signup/login.dart';
import 'package:signin_signup/signup.dart';
import 'package:get/get.dart';
import 'package:signin_signup/welcome.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Welcome()
    );
  }
}
