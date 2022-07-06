import 'package:first/utils/routes.dart';
import 'package:first/widgets/hmpgdrawer.dart';
import 'package:flutter/material.dart';
import '../widgets/hmpgdrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/ShopKart.jpg',
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
      drawer: const HmpgDrawer(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.login_rounded),
        onPressed: () => {Navigator.pushNamed(context, MyRoutes.loginRoute)},
        backgroundColor: const Color(0xFF191CD2),
      ),
    );
  }
}
