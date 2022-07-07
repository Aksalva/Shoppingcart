import 'package:first/utils/routes.dart';
import 'package:first/widgets/hmpgdrawer.dart';
import 'package:flutter/material.dart';
import '../widgets/hmpgdrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  (darkModeOn)
                      ? 'assets/images/shopkart-dark.png'
                      : 'assets/images/shopkart-light.png',
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ),
        drawer: const HmpgDrawer(),
        floatingActionButton: ClipOval(
          child: InkWell(
            onLongPress: () {},
            child: FloatingActionButton(
              child: const Icon(Icons.login_rounded),
              onPressed: () =>
                  {Navigator.pushNamed(context, MyRoutes.loginRoute)},
            ),
          ),
        ));
  }
}
