
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './../../core/models/counter.dart';
import './../../core/models/user.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Counter counterProv = Provider.of<Counter>(context);
    User userProv = Provider.of<User>(context);

    return Scaffold(
      appBar: AppBar(title: Text('FlashAir Uploader')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Consumer2<Counter, User>(
              builder: (context, counter, user, child) => Text(
                '${counter.value}/${user.name}',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => counter.increment(),
        onPressed: () => userProv.update('ul'),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}