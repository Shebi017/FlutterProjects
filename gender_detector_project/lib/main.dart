import 'package:flutter/material.dart';
import 'package:gender_detector_project/pages/gender_detector.dart';
import 'package:gender_detector_project/pages/pakistan.dart';
import 'package:gender_detector_project/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pakistan Zindabad",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // ROutes
      initialRoute: MyRoutes.genderRoute,
      routes: {
        MyRoutes.pkRoute: (context) => PakistanApp(),
        MyRoutes.genderRoute: (context) => GenderDetectorApp(),
      },
    );
  }
}
