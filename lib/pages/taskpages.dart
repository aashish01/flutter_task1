import 'package:flutter/material.dart';
import '../Models/completeModel.dart';
import 'dart:async';

//-------------- Completed ------------------
class Completed extends StatelessWidget {
  const Completed({Key key}) : super(key: key);
  Future<List<Details>> fetchDetails(BuildContext context) async {
    final jsonstring =
        await DefaultAssetBundle.of(context).loadString('assets/data.json');
    return detailsFromMap(jsonstring);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: fetchDetails(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data.length,
              itemBuilder: (context, int index) {
                Details details = snapshot.data[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          details.date,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
//---------------------------------------------------------
                    Container(
                      child: Row(
                        children: <Widget>[
                          Image.network(
                            details.image,
                            height: 50,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Card(
                            elevation: 10,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 350,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 16,
                                      right: 10,
                                      left: 10,
                                      bottom: 5,
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          details.name,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Text(
                                          details.price,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    bottom: 5,
                                    right: 100,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Icon(
                                            Icons.stop,
                                            color: Colors.green,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                        height: 10,
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            details.address1,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 0,
                                    bottom: 5,
                                    right: 180,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            details.time1,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 5,
                                    bottom: 5,
                                    right: 140,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Icon(
                                            Icons.stop,
                                            color: Colors.red,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                        height: 10,
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            details.address2,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 0,
                                    bottom: 10,
                                    right: 180,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            details.time2,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
//-----------------------------------------------------------
                  ],
                );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

//-------------- Up Comming ------------------

class Upcomming extends StatefulWidget {
  @override
  _UpcommingState createState() => _UpcommingState();
}

class _UpcommingState extends State<Upcomming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('upcomming'),
      ),
    );
  }
}

//----------------- Cancelled ------------------

class Cancelled extends StatefulWidget {
  @override
  _CancelledState createState() => _CancelledState();
}

class _CancelledState extends State<Cancelled> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Cancelled'),
      ),
    );
  }
}
