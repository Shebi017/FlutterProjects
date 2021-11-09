import 'package:day6/pages/about_page.dart';
import 'package:day6/pages/contact_page.dart';
import 'package:day6/pages/home_page.dart';
import 'package:day6/utils/rotes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.aboutRoute: (context) => AboutPage(),
        MyRoutes.contactRoute: (context) => ContactPage(),
      },
    );
  }
}
