import 'package:day7/pages/about_tab.dart';
import 'package:day7/pages/contact_tab.dart';
import 'package:day7/pages/home_tab.dart';
import 'package:day7/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // App Bar Section
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          // leading: Icon(Icons.menu),
          title: Text("MyTitle"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            // labelPadding: EdgeInsets.all(3),
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.face),
                text: "About",
              ),
              Tab(
                icon: Icon(Icons.contact_page),
                text: "Contact",
              )
            ],
          ),
        ),

        // Drawer Code

        drawer: MyDrawer(),

        // Body Section

        body: TabBarView(
          children: [
            HomeTab(),
            AboutTab(),
            ContactTab(),
          ],
        ),
      ),
    );
  }
}
