import 'package:flutter/material.dart';
import 'package:money_transfer/all_contact_list.dart';
import 'package:money_transfer/recent_list.dart';

class PayPage extends StatefulWidget {
  @override
  _PayPageState createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            side:
                BorderSide(color: Color.fromRGBO(50, 50, 51, 1.0), width: 4.0),
          ),
          backgroundColor: Color.fromRGBO(50, 50, 51, 1.0),
          child: Container(
            height: 75,
            width: 75,
            child: Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) => Container(
              margin: EdgeInsets.only(top: 40, left: 20.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(50, 50, 51, 1.0),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: IconButton(
                      iconSize: 15,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Pay',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 20.0,
                      right: 16.0,
                    ),
                    padding: EdgeInsets.only(left: 16.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        // color: Colors.black12,
                        color: Color.fromRGBO(207, 207, 212, 1.0)),
                    child: TextField(
                      controller: null,
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: 'name,username,phone or email',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      'Recents',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RecentList(),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'All',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'ADD CONTACT',
                              style: TextStyle(color: Colors.blue),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.blue,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: AllContactList(),
                  ),
                  // AllContactList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
