import 'package:flutter/material.dart';
import 'package:money_transfer/account.dart';
import 'package:money_transfer/bottom_nav.dart';
import 'package:money_transfer/feed_list.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Builder(
          builder: (BuildContext context) => Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => AccountPage(),
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            // margin: EdgeInsets.only(top: 40.0),
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              'assets/images/p1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Feed',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(207, 207, 212, 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25.0),
                                ),
                              ),
                              padding: EdgeInsets.only(
                                left: 16.0,
                                right: 16.0,
                                top: 10.0,
                                bottom: 10.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Icon(Icons.public),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 4.0, right: 4.0),
                                    child: Text('public'),
                                  ),
                                  Image.asset('assets/images/less.png')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      FeedListPage()
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: BottomNavigation(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
