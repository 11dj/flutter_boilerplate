import 'package:flutter/material.dart';

import 'package:flutter_boilerplate/ui/views/earning_view.dart';
import 'package:flutter_boilerplate/ui/views/home_view.dart';
import 'package:flutter_boilerplate/ui/views/upload_view.dart';

class MainView extends StatefulWidget {

  @override 
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeView(),
    EarningView(),
    UploadView(),
    UploadView(),
  ];

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }

  @override 
  Widget build(BuildContext context) {
    return Theme(
            data: Theme.of(context).copyWith(
              // canvasColor: Color(0xFF121212),
              canvasColor: Colors.black,
              // primaryColor: Colors.white,
              textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Colors.white)
              )
            ),
            child: Scaffold(
              body: _children[_currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                showSelectedLabels: false, 
                showUnselectedLabels: false, 
                type: BottomNavigationBarType.fixed,
                fixedColor: Colors.blue,
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
            ),
          );
        } 
}