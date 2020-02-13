import 'package:flutter/material.dart';

class SubmitView extends StatefulWidget {

  @override 
  _SubmitViewState createState() => _SubmitViewState();
}

class _SubmitViewState extends State<SubmitView> {




  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
        // child: Text('Home', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
        child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(color: Colors.red),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text('Home', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),)
              ]),
            )
          ),
          Expanded(
            child: Center(
              // color: Colors.white,
              // height: 200,
              // width: 100,
              child: Text('Hello') ,
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              height: 200,
              width: 100,
              child: Text('Hello') ,
            ),
            flex: 7,
          ),
        ],
      ),
      ),
    );
  } 
}