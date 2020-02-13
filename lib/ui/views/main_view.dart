import 'package:flutter/material.dart';

import 'package:flutter_boilerplate/ui/views/counter_view.dart';
import 'package:flutter_boilerplate/ui/views/home_view.dart';
import 'package:flutter_boilerplate/ui/views/Layout_view.dart';
import 'package:flutter_boilerplate/ui/views/submit_view.dart';

class MainView extends StatefulWidget {

  @override 
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeView(),
    CounterView(),
    SubmitView(),
    LayoutView(),
  ];

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black.withOpacity(0.6),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.black12,
        // showSelectedLabels: false, 
        // showUnselectedLabels: false, 
        onTap: onTabTapped, 
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text('sss'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_upload),
            title: Text('Upload'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Setting')
          )
        ],
       ) ,
    );
  } 
}