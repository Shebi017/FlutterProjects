import 'package:day1/Custom%20Widgets/MyTab.dart';
import 'package:day1/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Home Page"),
            leading: Icon(Icons.menu),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.loginRoute);
                  },
                  icon: Icon(Icons.search))
            ],
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.car_rental),
                text: "Car",
              ),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: "Bus",
              ),
              Tab(
                icon: Icon(Icons.motorcycle_rounded),
                text: "Motercycle",
              ),
            ]),
          ),
          body: Container(
            child: TabBarView(
              children: [
                MyTab(
                    child: Text(
                  "My Car",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
                MyTab(
                    child: Text(
                  "My Bus",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
                MyTab(
                    child: Text(
                  "My Motercycle",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
              ],
            ),
          ),
        ));
  }
}
