import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_basics/widgets/centered_view/centered_view.dart';
import 'package:web_basics/widgets/navigation_bar/navigation_bar.dart';

import 'home_content_desktop.dart';
import 'home_content_mobile.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                );
  }
}
