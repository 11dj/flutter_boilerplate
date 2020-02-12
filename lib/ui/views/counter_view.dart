
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_boilerplate/core/models/counter.dart';
import 'package:flutter_boilerplate/core/models/user.dart';

class CounterView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Counter counterProv = Provider.of<Counter>(context);
    User userProv = Provider.of<User>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      // body: Center(
      //   child: Column(
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text('You have pushed the button this many times:'),
      //       Consumer2<Counter, User>(
      //         builder: (context, counter, user, child) => Text(
      //           '${counter.value}/${user.name}',
      //           style: Theme.of(context).textTheme.display1,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Text('AAaa'),
          Text('AAaa'),
          Text('AAaa'),
        ]
        ),
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => counterProv.increment(),
        // onPressed: () => userProv.update('ul'),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}