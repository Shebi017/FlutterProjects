import 'package:flutter/material.dart';
import 'package:gender_detector_project/utils/routes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GenderDetectorApp extends StatefulWidget {
  const GenderDetectorApp({Key? key}) : super(key: key);

  @override
  _GenderDetectorAppState createState() => _GenderDetectorAppState();
}

class _GenderDetectorAppState extends State<GenderDetectorApp> {
  String myResult = "";
  String username = "";
  genderDetector(String username) async {
    var url =
        "https://gender-api.com/get?name=$username&key=ZAxUXS6ZKDPvGhrSA9MRZvjArNQTf7GB2SPT";

    var res = await http.get(Uri.parse(url));

    var body = json.decode(res.body);

    myResult =
        "$username is  ${body['gender']} and Acuraccy is ${body['accuracy']}";

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("Gender Detector App"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.pkRoute);
                },
                child: Text(
                  "Go To PK",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Enter your name to check gender",
              style: TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  border: OutlineInputBorder(
                      gapPadding: 6, borderRadius: BorderRadius.circular(10)),
                ),
                onChanged: (value) {
                  username = value;
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(username);
                genderDetector(username);
              },
              child: Text("Check It"),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange),
              ),
            ),
            Text(
              "Result : $myResult ",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
