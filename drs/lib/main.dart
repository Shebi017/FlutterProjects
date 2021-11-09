import 'package:drs/Pages/CartPage.dart';
import 'package:drs/Pages/CheckoutPage.dart';
import 'package:drs/Pages/HomePage.dart';
import 'package:drs/utils/routes.dart';
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
        MyRoutes.cartRoute: (context) => CartPage(),
        MyRoutes.checkoutRoute: (context) => CheckoutPage(),
      },
    );
  }
}
