// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountName: Text(
                'Ayoub Pro',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'ayyoubBoulahri@gmail.com',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
            ),
          ),
          listTile(screen: 'Home', icon: CupertinoIcons.home),
          listTile(screen: 'My Account', icon: CupertinoIcons.person),
          listTile(screen: 'My Orders', icon: CupertinoIcons.cart_fill),
          listTile(screen: 'My Wish List', icon: CupertinoIcons.heart_fill),
          listTile(screen: 'Settings', icon: CupertinoIcons.settings),
          listTile(screen: 'Log Out', icon: Icons.exit_to_app),
        ],
      ),
    );
  }

  ListTile listTile({required String screen, required IconData icon}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.red,
      ),
      title: Text(
        screen,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
