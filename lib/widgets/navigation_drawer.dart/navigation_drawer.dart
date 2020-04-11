import 'package:flutter/material.dart';

import 'drawer_item.dart';
import 'navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16)
        ]
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem(title: 'Episodes', icon: Icons.videocam),
          DrawerItem(title: 'About', icon: Icons.help),
        ],
      ),
    );
  }
}