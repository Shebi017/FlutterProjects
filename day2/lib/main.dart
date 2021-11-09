import 'package:day2/pages/home_page.dart';
import 'package:day2/pages/login_page.dart';
import 'package:day2/utils/routs.dart';
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
        // home: HomePage(),
        title: "My Day 2",
        initialRoute: MyRoutes.loginRoute,
        theme: ThemeData(
          fontFamily: GoogleFonts.lato(fontStyle: FontStyle.italic).fontFamily,
        ),
        // Removing debug banner
        debugShowCheckedModeBanner: false,
        // Routes
        routes: {
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
        });
  }
}
