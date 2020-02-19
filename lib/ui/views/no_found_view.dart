
import 'package:flutter/material.dart';
import 'styles/colors.dart' as colorK;

class NotFoundView extends StatefulWidget {
  NotFoundView({Key key, this.title}) : super(key: key);
  final String title;


  @override 
  _NotFoundViewState createState() => _NotFoundViewState();
}

class _NotFoundViewState extends State<NotFoundView> {

  @override 
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: colorK.MyColors.black[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('No route defined for ${widget.title}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () { Navigator.of(context).pop(); },
              child: const Text(
                'Go back',
                style: TextStyle(fontSize: 20)
              ),
            ),
          ],
        ),
      ),

    );
  }
}