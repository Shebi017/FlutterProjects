import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: Image.asset("assets/images/login.png"),
                margin: EdgeInsets.zero,
                accountName: Text("Shahzaib Afzal"),
                accountEmail: Text("qurashishebi@gmail.com"),
              ))
        ],
      ),
    );
  }
}
