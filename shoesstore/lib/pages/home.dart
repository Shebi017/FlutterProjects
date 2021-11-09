import 'package:flutter/material.dart';
import 'package:shoesstore/widgets/container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        // leading: Icon(Icons.menu),
        title: Text("HOME PAGE"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
        centerTitle: true,
      ),
      drawer: Drawer(
        child: DrawerHeader(
            padding: EdgeInsets.all(0.0),
            child: UserAccountsDrawerHeader(
              accountEmail: Text("shebi@gmail.com"),
              accountName: Text("Shahzaib"),
            )),
      ),
      body: MyContainer(
        text: Text(
          "HomePage",
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        color: Colors.amber,
      ),
    );
  }
}
