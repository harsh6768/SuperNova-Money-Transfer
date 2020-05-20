import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:money_transfer/feed_model.dart';

class FeedListPage extends StatefulWidget {
  @override
  _FeedListPageState createState() => _FeedListPageState();
}

class _FeedListPageState extends State<FeedListPage> {

  List<FeedModel> feedModelList;

  Future<List<FeedModel>> parseJsonFromAssets() async {
    return rootBundle.loadString('assets/data/feed.json').then((jsonStr) {
      var jsonResponse = json.decode(jsonStr);

      // print(jsonResponse);

      feedModelList =
          List<FeedModel>.from(jsonResponse.map((x) => FeedModel.fromJson(x)));
      print(feedModelList);
      return Future.value(feedModelList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) => Container(
        height: MediaQuery.of(context).size.height,
        child: FutureBuilder(
          future: parseJsonFromAssets(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: feedModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  var isPaidTitle =
                      feedModelList[index].isPaid ? 'paid' : 'charged';
                  var isLikedTitle =
                      feedModelList[index].isLike ? 'LIKED' : 'LIKE';
                  // var
                  return Container(
                    margin: EdgeInsets.only(top: 16.0),
                    height: 110,
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  feedModelList[index].imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8.0),
                              child: Text(
                                feedModelList[index].paidTime,
                                style: TextStyle(
                                  color: Color.fromRGBO(207, 207, 212, 1.0),
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                feedModelList[index].isPaid
                                    ? Text(
                                        feedModelList[index].paidMoney,
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(66, 210, 115, 1.0),
                                          fontSize: 16,
                                        ),
                                      )
                                    : SizedBox(
                                        height: 1.0,
                                      ),
                                RichText(
                                  text: TextSpan(
                                    text: '${feedModelList[index].payerName}\t',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: '$isPaidTitle\t'),
                                      TextSpan(
                                        text: feedModelList[index].recipient,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 4.0,
                                  ),
                                  child: Text(
                                    feedModelList[index].payDescription,
                                  ),
                                ),
                                feedModelList[index].isLike
                                    ? Row(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(top: 4.0),
                                            height: 20,
                                            width: 20,
                                            child: Image.asset(
                                                'assets/images/favorite_active.png'),
                                          ),
                                          SizedBox(
                                            width: 4.0,
                                          ),
                                          Text(feedModelList[index].likedBy)
                                        ],
                                      )
                                    : Container(
                                        margin: EdgeInsets.only(top: 4.0),
                                        height: 20,
                                        width: 20,
                                        child: Image.asset(
                                            'assets/images/favorite.png'),
                                      ),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        isLikedTitle,
                                        style: TextStyle(
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Text(
                                        'COMMENT',
                                        style: TextStyle(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
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
