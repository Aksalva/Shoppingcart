import 'package:first/pages/home_page.dart';
import 'package:first/pages/login_page.dart';
import 'package:first/pages/wlcm_page.dart';
import 'package:first/utils/routes.dart';
import 'package:first/widgets/theme.dart';
import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: '/',
        routes: {
          "/": (context) => WlcmPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.wlcmRoute: (context) => WlcmPage(),
        });
  }
}
