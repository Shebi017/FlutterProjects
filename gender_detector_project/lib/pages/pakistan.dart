import 'package:flutter/material.dart';
import 'package:gender_detector_project/utils/routes.dart';

class PakistanApp extends StatefulWidget {
  const PakistanApp({Key? key}) : super(key: key);

  @override
  _PakistanAppState createState() => _PakistanAppState();
}

class _PakistanAppState extends State<PakistanApp> {
  String myTitle = "Pakistan ";
  bool buttonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        title: Text("Pakistan App"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.genderRoute);
                },
                child: Text(
                  "Go To GenderApp",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonPressed
                  ? Image.network(
                      "https://cdn.britannica.com/46/3346-004-D3BDE016/flag-symbolism-Pakistan-design-Islamic.jpg",
                      fit: BoxFit.fitWidth,
                      width: 300,
                    )
                  : Text(""),

              SizedBox(
                height: 20,
              ),
              buttonPressed
                  ? Text(
                      "Pakistan Zindabad",
                      textScaleFactor: 2,
                    )
                  : Text(
                      "Pakistan",
                      textScaleFactor: 2,
                    ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonPressed = true;

                    print(myTitle);
                  });
                },
                child: Text("Press me"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
              ),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonPressed = false;
                  });
                },
                child: Text("Reset"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
              ),

              // OutlinedButton(onPressed: () {}, child: Text("Press Me"))
            ],
          ),
        ),
      ),
    );
  }
}
