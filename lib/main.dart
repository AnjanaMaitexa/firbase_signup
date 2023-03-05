
import 'package:firbase_signup/auth_controller.dart';
import 'package:firbase_signup/login_page.dart';
import 'package:firbase_signup/signup_page.dart';
import 'package:firbase_signup/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp()
.then((value)=>Get.put(AuthController()));//because of these fun auth is available for all page
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
      home:LoginPage()
    );
  }
}
