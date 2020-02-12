
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
      // body: Container(
      //   color: Colors.green ,
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         RaisedButton(
      //           onPressed: () => Navigator.pushNamed(context, 'counter'),
      //           child: const Text(
      //             'Counter',
      //             style: TextStyle(fontSize: 20)
      //           ),
      //         ),
      //         const SizedBox(height: 30),
      //         RaisedButton(
      //           onPressed: () => Navigator.pushNamed(context, 'user'),
      //           child: const Text(
      //             'User name',
      //             style: TextStyle(fontSize: 20)
      //           ),
      //         ),
      //         const SizedBox(height: 30),
      //         RaisedButton(
      //           onPressed: () => Navigator.pushNamed(context, 'layout'),
      //           child: const Text(
      //             'Layout',
      //             style: TextStyle(fontSize: 20)
      //           ),
      //         ),
      //         const SizedBox(height: 30),
      //       ],
      //     ),
      //   ),
      // )
      body: Column(
        children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Container(
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Data 1', style: TextStyle(fontSize: 20)),
                  Text('Data 2', style: TextStyle(fontSize: 20)),
                ],
              )
            )
          ),
          Flexible(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(color: Colors.yellow),
            )
          ),
        ],
      ),

    );
  }
}