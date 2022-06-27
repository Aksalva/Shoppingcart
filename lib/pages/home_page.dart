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
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/img.jpg'),
            const Text(
              "Welcome to MyApp",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      drawer: const HmpgDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {Navigator.pushNamed(context, MyRoutes.loginRoute)},
        backgroundColor: const Color(0xFF191CD2),
      ),
    );
  }
}
