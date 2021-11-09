import 'package:countryinfo/pages/DetailPage.dart';
import 'package:countryinfo/pages/HomePage.dart';
import 'package:countryinfo/utils/routes.dart';
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
        MyRoutes.detailRoute: (context) => DetailPage()
      },
    );
  }
}
