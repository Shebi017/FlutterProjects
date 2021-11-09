import 'package:day3/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool clickButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/login2.png"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Wellcome $name",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        clickButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
                      setState(() {
                        clickButton = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: clickButton ? 50 : 150,
                      alignment: Alignment.center,
                      height: 50,
                      child: clickButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                      // color: Colors.blue,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: clickButton
                              ? BorderRadius.circular(80)
                              : BorderRadius.circular(10)),
                    ),
                  )
                  // ElevatedButton(
                  //     // onPressed: () {
                  //     //   Navigator.pushNamed(context, MyRoutes.homeRoutes);
                  //     // },
                  //     // child: Text("Signin"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
