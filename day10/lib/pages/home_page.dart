import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // App Bar

        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.menu),
          title: Text("MyTitle"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.car_rental),
                text: "Car",
              ),
              Tab(icon: Icon(Icons.motorcycle_rounded), text: "Motercyle"),
              Tab(
                icon: Icon(Icons.bus_alert),
                text: "Bus",
              )
            ],
          ),
        ),

        body: TabBarView(
          children: [
            //  Car
            Center(
              child: Container(
                color: Colors.deepPurple,
                height: 230,
                width: 230,
                child: Center(child: Text("Car")),
              ),
            ),

            Center(
              child: Container(
                color: Colors.deepPurple,
                height: 230,
                width: 230,
                child: Center(child: Text("Motercycle")),
              ),
            ),

            Center(
              child: Container(
                color: Colors.deepPurple,
                height: 230,
                width: 230,
                child: Center(child: Text("Bus")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
