import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_basics/services/navigation_service.dart';
import 'package:web_basics/extensions/hover_extensions.dart';

import '../../locator.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;

  const NavBarItem({Key key, @required this.title, @required this.navigationPath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
          child: Text(title, style: GoogleFonts.openSans(fontSize: 18),
      ),
    );
  }
}