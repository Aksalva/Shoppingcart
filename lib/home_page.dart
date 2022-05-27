import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int count = 3;

    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $count MyApp"),
        ),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
      ),
    );
  }
}
