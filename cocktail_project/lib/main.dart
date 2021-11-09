import 'package:cocktail_project/pages/HomePage.dart';
import 'package:cocktail_project/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.pacifico().fontFamily,
      ),
      // routes info..

      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        // MyRoutes.detailRoute: (context) => DrinkDetail(),
      },
    );
  }
}
