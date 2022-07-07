// ignore_for_file: use_key_in_widget_constructors,, prefer_const_constructors

import 'package:first/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.wlcmRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: const Text(
              "Login Page",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Theme.of(context).cardColor,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(CupertinoIcons.back),
            )),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Center(
              child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/images/street.png'),
                const SizedBox(height: 20),
                const Text(
                  'Login Page',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  'Welcome $name',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Username", labelText: 'Username'),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          } else if (value.length < 4) {
                            return "Username is too short";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password is too short";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                      Material(
                        color: const Color(0xFF191CD2),
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changeButton ? 50 : 100,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
