import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(fontSize: 22),
              ),
              tileColor: Colors.blueGrey,
            ),
            ListTile(
              title: Text(
                "Products",
                style: TextStyle(fontSize: 22),
              ),
              tileColor: Colors.purple,
            ),
            ListTile(
              title: Text(
                "Stocks",
                style: TextStyle(fontSize: 22),
              ),
            ),
            ListTile(
              title: Text(
                "Bills",
                style: TextStyle(fontSize: 22),
              ),
            ),
            ListTile(
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}