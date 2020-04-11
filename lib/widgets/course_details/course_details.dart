import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlign = sizingInformation.deviceScreenType == DeviceScreenType.Desktop ? TextAlign.left : TextAlign.center;
      double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.Mobile ? 50 : 80;
      double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.Mobile ? 16 : 21;
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('FLUTTER WEB.\nTHE BASICS',
            textAlign: textAlign,
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w800, height: 0.9, fontSize: titleSize,)),
            SizedBox(height: 30),
            Text(
                'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
                textAlign: textAlign,
                style: GoogleFonts.openSans(fontSize: descriptionSize, height: 1.7)),
          ],
        ),
      );
    });
  }
}
