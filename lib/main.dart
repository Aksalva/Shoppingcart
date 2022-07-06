// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:first/core/store.dart';
import 'package:first/pages/cart_page.dart';
import 'package:first/pages/home_page.dart';
import 'package:first/pages/login_page.dart';
import 'package:first/pages/wlcm_page.dart';
import 'package:first/utils/routes.dart';
import 'package:first/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main(List<String> args) {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: '/',
        routes: {
          "/": (context) => HomePage(),
          MyRoutes.homeRoute: (context) => const HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.wlcmRoute: (context) => WlcmPage(),
          MyRoutes.cartRoute: (context) => CartPage(),
        });
  }
}
