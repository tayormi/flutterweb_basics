import 'package:flutter/material.dart';
import 'package:web_basics/widgets/call_to_action/call_to_action.dart';
import 'package:web_basics/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetails(),
        SizedBox(height: 100,),
        CallToAction(title: 'Join Course'),
      ],
    );
  }
}