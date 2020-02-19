import 'package:flutter/material.dart';
import 'styles/colors.dart' as colorK;
import 'dart:math';

class UploadView extends StatefulWidget {
  @override
  _UploadViewState createState() => _UploadViewState();
}

class _UploadViewState extends State<UploadView> {
  var listAct = [
    {
      "icon": Icons.photo,
      "opt": "-",
      "name": "567.JPG is uploaded"
    },
    {
      "icon": Icons.photo,
      "opt": "-",
      "name": "568.JPG is uploaded"
    },
    {
      "icon": Icons.photo,
      "opt": "-",
      "name": "569.JPG is uploaded"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorK.MyColors.black[900],
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
                    Text(
                      'Hi, Suchart T.',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ]),
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Submit Photo',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ]),
            ),
            Container(
              height: 110,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5.0),
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: colorK.MyColors.black[800],
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Your Credits',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  Text('91,806',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Uploaded Today',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  Text('124',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ]),
            ),
            Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5.0),
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: colorK.MyColors.black[800],
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Transfer via',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  Text('FlashAir',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  // Container
                                ],
                              ),
                            ],
                          )),
                    ),
                  ]),
            ),
            Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5.0),
                          // padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: colorK.MyColors.black[800],
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                    decoration: BoxDecoration(color: colorK.MyColors.black[800], shape: BoxShape.rectangle, ),
                                    child: Center(
                                      heightFactor: 1.6,
                                      child: Text('Preparing',
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)
                                      ),) ,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                    decoration: BoxDecoration(color: colorK.MyColors.black[800], shape: BoxShape.rectangle, ),
                                    child: Center(
                                      heightFactor: 1.6,
                                      child: Text('Pending',
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)
                                      ),) ,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                    decoration: BoxDecoration(color: colorK.MyColors.black[700], shape: BoxShape.rectangle, ),
                                    child: Center(
                                      heightFactor: 1.6,
                                      child: Text('Uploaded',
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)
                                      ),) ,
                                    ),
                                  ),
                                ],
                              )
                            ),
                    ),
                  ]),
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(color: Colors.grey),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.symmetric( horizontal: 4.0),
                          child: Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: ListTile(
                              leading: Icon(listAct[index]['icon'], size: 36, color: Colors.white,),
                              title: Text(listAct[index]['name'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                              trailing: Container(
                                height: 40,
                                width: 60,
                                // decoration: BoxDecoration(color: listAct[rg]['opt'] == '+' ? Colors.green : Colors.red),
                                child: Center(child:Text('${listAct[index]['opt']}1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),))
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
