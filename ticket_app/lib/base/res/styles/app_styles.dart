import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xff3b3b3b);
  static Color bgColor = const Color(0xffeeedf2);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xffd2bdb6);
  static Color ticketTabColor = const Color(0xfff4f6fd);
  static Color planeColor = const Color(0xffbfc2df);
  static Color findTicketColor = const Color(0xd91130ce);
  static Color circleColor = const Color(0xff189999);
  static Color ticketColor = const Color(0xffffffff); // white
  static Color dotColor = const Color(0xff8accf7);
  static Color planeSecondColor = const Color(0xffbaccf7);
  static Color profileLocationColor = const Color(0xfffef4f3);
  static Color profileTextColor = const Color(0xff526799);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);

  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLineStyle4 = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey);
}
