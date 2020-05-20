import 'package:flutter/material.dart';
import 'package:money_transfer/pay.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
        body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 70, left: 25.0, right: 16.0),
                    child: Text(
                      'Account balance',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 25.0, right: 16.0),
                    child: Text(
                      '\$10,234',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  PayComponent(
                    title: 'Pay',
                    color: Colors.red.shade100,
                    imageUrl: 'assets/images/money_3.png',
                    navigateTo: '/pay',
                    context: context,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 30.0,
                      left: 16.0,
                      right: 16.0,
                      bottom: 20,
                    ),
                    color: Colors.black12,
                    height: 1.0,
                    width: MediaQuery.of(context).size.width,
                  ),
                  PayComponent(
                    title: 'Transfer',
                    color: Color.fromRGBO(254, 245, 206, 1.0),
                    imageUrl: 'assets/images/money_transfer1.png',
                    navigateTo: '/pay',
                    context: context,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 30.0,
                      left: 16.0,
                      right: 16.0,
                      bottom: 20,
                    ),
                    color: Colors.black12,
                    height: 1.0,
                    width: MediaQuery.of(context).size.width,
                  ),
                  PayComponent(
                    title: 'Request',
                    color: Color.fromRGBO(192, 238, 218, 1.0),
                    imageUrl: 'assets/images/request.png',
                    navigateTo: '/pay',
                    context: context,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PayComponent extends StatelessWidget {
  final String title;
  final Color color;
  final String imageUrl;
  final String navigateTo;
  final BuildContext context;
  PayComponent(
      {this.title, this.color, this.imageUrl, this.navigateTo, this.context});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Image.asset(imageUrl),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Color.fromRGBO(207, 207, 212, 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => PayPage(),
                  ),
                );
              },
              iconSize: 12,
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
