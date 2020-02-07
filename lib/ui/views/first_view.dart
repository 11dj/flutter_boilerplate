
import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  FirstView({Key key, this.title}) : super(key: key);
  final String title;


  @override 
  _FirstViewState createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {

  @override 
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, 'counter'),
              child: const Text(
                'Counter',
                style: TextStyle(fontSize: 20)
              ),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {},
              child: const Text(
                'Enabled Button',
                style: TextStyle(fontSize: 20)
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),

    );
  }
}