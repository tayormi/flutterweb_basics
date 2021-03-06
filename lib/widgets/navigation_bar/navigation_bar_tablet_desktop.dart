import 'package:flutter/material.dart';
import 'package:web_basics/routing/route_names.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDestop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem(title: 'Episodes', navigationPath: EpisodesRoute,),
              SizedBox(width: 60),
              NavBarItem(title: 'About', navigationPath: AboutRoute,)
            ],
          )
        ],
      ),
    );
  }
  }