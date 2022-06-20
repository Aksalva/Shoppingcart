import 'package:flutter/material.dart';

class WlcmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Page"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text('Welcome to my App',
                style: TextStyle(fontSize: 30, color: Colors.blue[300])),
          ],
        ),
      ),
    );
  }
}
