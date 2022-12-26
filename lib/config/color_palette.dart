
//TODO: Dark and Light Color Themes from Design Team.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppTheme{

  //Color primaryColor = const Color.fromARGB(255, 0, 76, 125);
  Color primaryColor = const Color(0xFF004C7D);
  Color secondaryColor = const Color(0xFF4B7CB2);
  Color backgroundColor = const Color(0xFFDBF2FF);

  
  //Added TextStyles by Yash

final headText1 =   GoogleFonts.openSans(
  color: Colors.white,
  decoration: TextDecoration
      .none,

  fontSize: 40,
);
final headText2 =  GoogleFonts.poppins(
  color: Colors.white,
  decoration: TextDecoration
      .none,

  fontSize: 16,
);
  //refer GoogleFonts package

  //refer these fontStyles:
  //outfit
  
}

class TextColour{

  Color white = Colors.white;

}

class BtnColor {

  Color submitBtn = Colors.deepOrange;
  Color regBtn = Colors.blue;
  Color googleLogin = Colors.black;

}