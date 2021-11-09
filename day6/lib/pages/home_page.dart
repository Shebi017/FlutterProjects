import 'package:day6/utils/rotes.dart';
import 'package:day6/widgets/appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Itians"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.contactRoute);
              },
              icon: Icon(Icons.contact_phone)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.aboutRoute);
              },
              icon: Icon(Icons.info)),
        ],
      ),
    );
  }
}
