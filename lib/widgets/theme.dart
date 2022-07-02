// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      cardColor: lightButtonBlue,
      scaffoldBackgroundColor: lightInterfaceBlue,
      selectedRowColor: lightElementColor,
      primaryColor: Colors.grey[700],
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      cardColor: darkButtonBlue,
      scaffoldBackgroundColor: darkInterfaceBlue,
      selectedRowColor: darkElementColor,
      primaryColor: Colors.blueGrey[100],
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ));

  //Colors
  static Color lightButtonBlue = Color(0xFF0095DF);
  static Color lightInterfaceBlue = Color(0xFFE6F4F9);
  static Color darkButtonBlue = Color(0xFF0977D1);
  static Color darkInterfaceBlue = Color(0xFF072B47);
  static Color lightElementColor = Color(0xFFFFFFFF);
  static Color darkElementColor = Color(0xFF0C4C7D);
}

/* Nominated colours
Black Currant (for card): 0xFF7E8CBE
Dark Interface : 0xFF163045
Dark Pale Blue (for card): 0xFF2A5879
*/