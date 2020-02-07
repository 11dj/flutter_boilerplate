
import 'package:flutter/material.dart';

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
      appBar: AppBar(title: Text('Not found')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('No route defined for ${widget.title}'),
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