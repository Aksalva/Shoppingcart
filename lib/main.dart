import 'package:first/pages/home_page.dart';
import 'package:first/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
            primarySwatch: Colors.purple,
            fontFamily: GoogleFonts.ubuntu().fontFamily),
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: '/login',
        routes: {
          "/": (context) => HomePage(),
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage(),
        });
  }
}
