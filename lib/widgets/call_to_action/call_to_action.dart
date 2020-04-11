import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_basics/extensions/hover_extensions.dart';

import 'call_to_action_mobile.dart';
import 'call_to_action_tablet_desktop.dart';

class CallToAction extends StatelessWidget {
  final String title;

  const CallToAction({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title: title),
      tablet: CallToActionTabletDesktop(title: title),
    ).showCursorOnHover;
  }
}
