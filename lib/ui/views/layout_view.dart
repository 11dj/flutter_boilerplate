
import 'package:flutter/material.dart';

class LayoutView extends StatefulWidget {
  LayoutView({Key key, this.title}) : super(key: key);
  final String title;


  @override 
  _LayoutViewState createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  @override 
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Layout page')),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(color: Colors.red),
            )
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                  flex: 1,
                ),
              ],
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}