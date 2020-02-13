
import 'package:flutter/material.dart';

import 'package:flutter_boilerplate/ui/widgets/provider_bar.dart';

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
      body: Column(
        children: <Widget>[
          ProviderBar(),
          Flexible(
            flex: 4,
            child: Container(
              child: Center(
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
                      onPressed: () => Navigator.pushNamed(context, 'user'),
                      child: const Text(
                        'User name',
                        style: TextStyle(fontSize: 20)
                      ),
                    ),
                    const SizedBox(height: 30),
                    RaisedButton(
                      onPressed: () => Navigator.pushNamed(context, 'layout'),
                      child: const Text(
                        'Layout',
                        style: TextStyle(fontSize: 20)
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            )
          ),
        ],
      ),

    );
  }
}