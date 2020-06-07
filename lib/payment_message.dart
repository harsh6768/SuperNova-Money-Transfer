import 'package:flutter/material.dart';

class PaymentMessage extends StatefulWidget {
  final String name;
  final String imageUrl;
  final String amount;
  PaymentMessage({this.name, this.imageUrl, this.amount});

  @override
  _PaymentMessageState createState() => _PaymentMessageState();
}

class _PaymentMessageState extends State<PaymentMessage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16.0, top: 40.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(50, 50, 51, 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: IconButton(
                          iconSize: 15,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 80.0),
                          height: 100,
                          width: 100,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 0,
                                child: Container(
                                  margin: EdgeInsets.only(top: 20.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25.0),
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      child: Image.asset(
                                        widget.imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 3,
                                right: 3,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: 16, right: 16.0, top: 40.0),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(43, 201, 103, 1.0),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: IconButton(
                                      iconSize: 15,
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 30.0),
                          child: Center(
                            child: Text(
                              'You just sent',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30.0),
                          child: Center(
                            child: Text(
                              widget.amount,
                              style: TextStyle(
                                fontSize: 26.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          child: Center(
                            child: Text(
                              widget.name,
                              style: TextStyle(
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 5,
                right: 0,
                left: 0,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 30.0,
                      left: 16.0,
                      right: 16.0,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(50, 50, 51, 1.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Center(
                      child: Text(
                        'Make another transaction',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
