import 'package:flutter/material.dart';
import 'dart:async';

class LoginView extends StatefulWidget {

  @override 
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isSubmit = false;

  final TextStyle textstyleBtn =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0);
  final TextStyle textstyleInput =
      TextStyle(color: Colors.white);
  final InputDecoration decoration = InputDecoration(
      enabledBorder: const OutlineInputBorder(
      // width: 0.0 produces a thin "hairline" border
      borderSide: BorderSide(color: Colors.white),
    ),
    border: OutlineInputBorder(),
    fillColor: Colors.white,
    hintText: 'Please enter a search term',
    hintStyle: TextStyle(color: Colors.grey)
  );

  decorationStyle(text) {
    final InputDecoration decoration = InputDecoration(
      enabledBorder: const OutlineInputBorder(
        // width: 0.0 produces a thin "hairline" border
        borderSide: BorderSide(color: Colors.white),
      ),
      border: OutlineInputBorder(),
      fillColor: Colors.white,
      hintText: text,
      hintStyle: TextStyle(color: Colors.grey)
    );
    return decoration;
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.6),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/logothairun-W.png",
                  fit: BoxFit.contain,
                ),
                TextFormField(
                  style: textstyleInput,
                  decoration: decorationStyle('Username'),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  style: textstyleInput,
                  decoration: decorationStyle('Password'),
                ),
                SizedBox(
                  height: 15,
                ),
                !isSubmit ? MaterialButton(
                  minWidth: 120,
                  child: Text(
                    'Sign in',
                    style: textstyleBtn,
                  ),
                  onPressed: () {
                    setState(() => isSubmit = true);
                    Timer(Duration(milliseconds: 500), () {
                      Navigator.pushNamed(context, 'main');
                      setState(() => isSubmit = false);
                    });
                  },
                ) : CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  } 
}