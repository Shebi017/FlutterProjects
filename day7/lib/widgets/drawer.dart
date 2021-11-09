import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imgURL =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNOhpV67XSI4Vz5Z_L7XoWiH7UzZQDBTzS3g&usqp=CAU";
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.brown),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  // currentAccountPicture: Image.network(imgURL),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imgURL),
                  ),
                  decoration: BoxDecoration(color: Colors.brown),
                  accountName: Text("QurshiShebi"),
                  accountEmail: Text("qurshishebi@gmil.com")),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.brown,
                size: 27,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.brown, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.brown,
                size: 27,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.brown, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.brown,
                size: 27,
              ),
              title: Text(
                "Email me",
                style: TextStyle(color: Colors.brown, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
