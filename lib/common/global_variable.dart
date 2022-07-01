import 'package:flutter/material.dart';

String uri = 'http://<yourip>:3000';

class GlobalVariables {
  // COLORS
  static const containerGradient = LinearGradient(
    colors: [
      Color(0xff09C6F9),
      Color(0xff045DE9),
    ],
    stops: [0.5, 0.5],
  );

  static const divider = Divider(
    color: Colors.grey,
    height: 0.5,
    thickness: 0.5,
  );
  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;
  static const appColor = Color(0xFF3377FF);
}
