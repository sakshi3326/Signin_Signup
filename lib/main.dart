import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:signin_signup/auth_controller.dart';
import 'package:signin_signup/login.dart';
import 'package:signin_signup/signup.dart';
import 'package:get/get.dart';
import 'package:signin_signup/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Login()
    );
  }
}
