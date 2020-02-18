import 'package:flutter/material.dart';
import 'dart:math';

class HomeView extends StatefulWidget {

  @override 
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  var listAct = [
    { "icon": Icons.attach_money, "val": 40, "opt": "+", "name": "Your photo get paid" },
    { "icon": Icons.photo, "val": 1, "opt": "-", "name": "Uploaded photo" },
    { "icon": Icons.photo, "val": 150, "opt": "+", "name": "get credit after sold" },
  ];




  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
        child: Column(
        children: <Widget>[
          Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text('Hi, Suchart T.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                Icon(Icons.settings, color: Colors.white,),
              ]),
          ),
          Container(
              height: 40,
              padding: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(color: Colors.black87),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text('Summary', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),)
              ]),
          ),
          Container(
              height: 150,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(color: Colors.black87),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)), 
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Credit', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('91,806', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white)),
                          ],)
                    ],),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)), 
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Earning', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('4,860 ฿', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white)),
                          ],)
                    ],),
                  ),
                ),
              ]),
          ),
          Container(
              height: 40,
              padding: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(color: Colors.black87),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text('Activity Log', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),)
              ]),
          ),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                decoration: BoxDecoration(color: Colors.black),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(color: Colors.grey),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    var rg = Random().nextInt(3);
                    return Padding(
                        padding: EdgeInsets.symmetric( horizontal: 4.0),
                        child: Card(
                          elevation: 0,
                          color: Colors.transparent,
                          child: ListTile(
                            leading: Icon(listAct[rg]['icon'], size: 36, color: Colors.white,),
                            title: Text(listAct[rg]['name'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            trailing: Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(color: listAct[rg]['opt'] == '+' ? Colors.green : Colors.red),
                              child: Center(child:Text('${listAct[rg]['opt']}${listAct[rg]['val']}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),))
                            ),
                          )
                      ),
                    );
                  }
              ,)),
            )
          )
        ],
      ),
      ),
    );
  } 
}