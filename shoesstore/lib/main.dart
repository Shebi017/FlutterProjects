import 'package:flutter/material.dart';
import 'package:shoesstore/pages/about.dart';
import 'package:shoesstore/pages/home.dart';
import 'package:shoesstore/pages/login.dart';
import 'package:shoesstore/pages/register.dart';
import 'package:shoesstore/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.registerRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.registerRoute: (context) => RegisterPage(),
        MyRoutes.aboutRoute: (context) => AboutPage(),
      },
    );
  }
}
