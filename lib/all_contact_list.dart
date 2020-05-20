import 'package:flutter/material.dart';
import 'package:money_transfer/all_contact_model.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class AllContactList extends StatefulWidget {
  @override
  _AllContactListState createState() => _AllContactListState();
}

class _AllContactListState extends State<AllContactList> {
  List<AllContactModel> allContactModelList;

  Future<List<AllContactModel>> parseJsonFromAssets() async {
    return rootBundle
        .loadString('assets/data/all_contact.json')
        .then((jsonStr) {
      var jsonResponse = json.decode(jsonStr);

      // print(jsonResponse);
      allContactModelList = List<AllContactModel>.from(
          jsonResponse.map((x) => AllContactModel.fromJson(x)));
      print(allContactModelList);
      return Future.value(allContactModelList);
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
                itemCount: allContactModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  // print(allContactModelList[index].name);
                  return Container(
                      margin: EdgeInsets.only(top: 16.0, right: 8.0),
                      // height: 110,
                      // width: 70,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                allContactModelList[index].imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  allContactModelList[index].name,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  allContactModelList[index].username,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ));
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
