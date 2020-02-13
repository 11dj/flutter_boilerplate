import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:flutter_boilerplate/core/models/user.dart';
import 'package:flutter_boilerplate/core/models/counter.dart';

class ProviderBar extends StatefulWidget {
  // ProviderBar

  @override 
  _ProviderBarState createState() => _ProviderBarState();
}

class _ProviderBarState extends State<ProviderBar> {
  TextStyle style = TextStyle(fontSize: 24.0);

  @override
  Widget build(BuildContext context) {
    return Consumer2<User,Counter>(
      builder: (context, user, counter, child) {
        Counter counterProv = Provider.of<Counter>(context);


        return Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container( 
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text('status : ${user.name}', style: style),
                          ),
                        ],
                      ),
                    ),
                  ), 
                  Expanded(
                    flex: 1,
                    child: Container( 
                      // color: Colors.green,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            color: Colors.green,
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                child: Text('User : ${user.name}', style: style),
                              ),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                child: RaisedButton(
                                  onPressed: () => print('Hello'),
                                  child: Text('Yes'),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container( 
                      // color: Colors.blue,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text('Counter : ${counter.value}', style: style),
                          ),
                          Container(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                child: RaisedButton(
                                  onPressed: () => counterProv.increment(),
                                  child: Text('increment'),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            )
          );
      }
    );
  }
}