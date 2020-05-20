import 'package:flutter/material.dart';
import 'package:money_transfer/pay_user.dart';
import 'package:money_transfer/recent_model.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class RecentList extends StatefulWidget {
  @override
  _RecentListState createState() => _RecentListState();
}

class _RecentListState extends State<RecentList> {
  var recentModel = RecentModel();

  List<RecentModel> recentModelList;

  Future<List<RecentModel>> parseJsonFromAssets() async {
    return rootBundle.loadString('assets/data/recent.json').then((jsonStr) {
      var jsonResponse = json.decode(jsonStr);

      // print(jsonResponse);

      recentModelList = List<RecentModel>.from(
          jsonResponse.map((x) => RecentModel.fromJson(x)));
      print(recentModelList);
      return Future.value(recentModelList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) => Container(
        height: 120,
        child: FutureBuilder(
          future: parseJsonFromAssets(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recentModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => PayUser(imageUrl: recentModelList[index].imageUrl,name: recentModelList[index].name),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 16.0, right: 8.0),
                      height: 110,
                      // width: 70,
                      child: Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  child: Image.asset(
                                    recentModelList[index].imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(50, 50, 51, 1.0),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: IconButton(
                                    iconSize: 15,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.network_wifi,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Text(recentModelList[index].name)
                        ],
                      ),
                    ),
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.red,
              ),
            );
          },
        ),
      ),
    );
  }
}
