import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            // IMAGE
            Image.asset("assets/images/login4.png"),

            // TITLE
            SizedBox(
              height: 10,
            ),

            Text(
              "Wellcome",
              style: TextStyle(
                // color: Colors.brown,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Text Feilds

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("LOGIN"))
                ],
              ),
            ),
            // Button
          ],
        ));
  }
}
