import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_basics/routing/route_names.dart';
import 'package:web_basics/routing/router.dart';
import 'package:web_basics/services/navigation_service.dart';
import 'package:web_basics/widgets/centered_view/centered_view.dart';
import 'package:web_basics/widgets/navigation_bar/navigation_bar.dart';

import '../../locator.dart';
import '../home_content_desktop.dart';
import '../home_content_mobile.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
          builder: (context, sizingInformation) => Scaffold(
          backgroundColor: Colors.white,
          body: CenteredView(
            child: Column(
              children: <Widget>[
                NavigationBar(),
                Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              )
              ],
            ),
          )),
    );
  }
}