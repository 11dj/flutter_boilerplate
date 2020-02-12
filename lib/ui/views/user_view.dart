
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_boilerplate/core/models/user.dart';

class UserView extends StatefulWidget {

  @override 
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  final TextEditingController myController = TextEditingController();
  String name;

  @override
  void initState() {
    super.initState();

    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("Second text field: ${myController.text}");
    // Provider.of<User>(context).update(myController.text);
    setState(() {
      name = myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    User userProv = Provider.of<User>(context);

    return Scaffold(
      appBar: AppBar(title: Text('User name')),
      body: Consumer<User>(
        builder: (context, user, child) {
          return Center(
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Your name is: ${user.name}',
                  style: Theme.of(context).textTheme.display1
                ),
                TextField(
                  controller: myController,
                  // onChanged: (value) => userProv.update(value)
                ),
              ],
            )
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => counter.increment(),
        onPressed: () => userProv.update(name),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}