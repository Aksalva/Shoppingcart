import 'package:first/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/img.jpg'),
            Text(
              "Welcome to MyApp",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
      ),
    );
  }
}
