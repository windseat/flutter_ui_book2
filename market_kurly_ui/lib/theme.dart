import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_kurly_ui/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: kPrimaryColor,
      elevation: 0.0,
    ),
    primaryColor: kPrimaryColor,
    textSelectionTheme: TextSelectionThemeData(cursorColor: kPrimaryColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    displayLarge: GoogleFonts.nanumGothic(fontSize: 18.0, fontWeight: FontWeight.bold),
    //headline1

    displayMedium: GoogleFonts.nanumGothic(fontSize: 16.0, fontWeight: FontWeight.bold),
    //headline2

    titleMedium: GoogleFonts.nanumGothic(fontSize: 16.0),
    //subtitle1

    bodyLarge: GoogleFonts.nanumGothic(fontSize: 15.0),
    // bodyText1

    bodyMedium: GoogleFonts.nanumGothic(fontSize: 14.0),
    // bodyText2
  );
}