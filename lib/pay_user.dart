import 'package:flutter/material.dart';
import 'package:money_transfer/payment_message.dart';

class PayUser extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String username;

  PayUser({this.imageUrl, this.name, this.username});

  @override
  _PayUserState createState() => _PayUserState();
}

class _PayUserState extends State<PayUser> {
  var amount = '0';
  bool isContinueButtonClicked = false;
  var indexStackDefaultIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox.expand(
          child: Stack(
            children: <Widget>[
              Container(
                // color: Color.fromRGBO(90, 85, 202, 1.0),
                height: MediaQuery.of(context).size.height / 1,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16.0, top: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
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
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  'Pay',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(50, 50, 51, 1.0),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
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
                    Container(
                      margin: EdgeInsets.only(top: 16.0),
                      child: Text(
                        widget.name,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 30.0,
                      ),
                      child: Text(
                        amount,
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    isContinueButtonClicked
                        ? Center(
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 2.4),
                              width: MediaQuery.of(context).size.width / 2.8,
                              height: 40,
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
                            ),
                          )
                        : SizedBox(
                            height: 1.0,
                          )
                  ],
                ),
              ),
              IndexedStack(
                index: indexStackDefaultIndex,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 2.1,
                    width: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50.0),
                        topLeft: Radius.circular(50.0),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          spreadRadius: 3.0,
                          color: Colors.black12,
                          offset: Offset(3.0, 3.0),
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 1.9,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    this.setState(() {
                                      amount.compareTo('0') > 0
                                          ? amount = amount + '1'
                                          : amount = '1';
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: Text(
                                      '1',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    this.setState(() {
                                      amount.compareTo('0') > 0
                                          ? amount = amount + '2'
                                          : amount = '2';
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: Text(
                                      '2',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    this.setState(() {
                                      amount.compareTo('0') > 0
                                          ? amount = amount + '3'
                                          : amount = '3';
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: Text(
                                      '3',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    this.setState(() {
                                      amount.compareTo('0') > 0
                                          ? amount = amount + '4'
                                          : amount = '4';
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: Text(
                                      '4',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    this.setState(() {
                                      amount.compareTo('0') > 0
                                          ? amount = amount + '5'
                                          : amount = '5';
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: Text(
                                      '5',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    this.setState(() {
                                      amount.compareTo('0') > 0
                                          ? amount = amount + '6'
                                          : amount = '6';
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: Text(
                                      '6',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    this.setState(() {
                                      amount.compareTo('0') > 0
                                          ? amount = amount + '7'
                                          : amount = '7';
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: Text(
                                      '7',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    this.setState(() {
                                      amount.compareTo('0') > 0
                                          ? amount = amount + '8'
                                          : amount = '8';
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: Text(
                                      '8',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    this.setState(() {
                                      amount.compareTo('0') > 0
                                          ? amount = amount + '9'
                                          : amount = '9';
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    child: Text(
                                      '9',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    this.setState(() {
                                      amount.compareTo('0') > 0
                                          ? amount = amount + '.'
                                          : amount = '0';
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 6.0),
                                    height: 35,
                                    width: 35,
                                    child: Text(
                                      '.',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    this.setState(() {
                                      amount.compareTo('0') > 0
                                          ? amount = amount + '0'
                                          : amount = '0';
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 8.0),
                                    height: 35,
                                    width: 35,
                                    child: Text(
                                      '0',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    this.setState(() {
                                      amount.compareTo('0') > 0
                                          ? amount.substring(
                                              0, amount.length - 1)
                                          : amount = '0';
                                    });
                                    print('>>>>>>>>>>>> $amount');
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(
                                        207,
                                        207,
                                        212,
                                        0.5,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(45.0),
                                        bottomLeft: Radius.circular(45.0),
                                        topRight: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Center(
                                      child: IconButton(
                                        iconSize: 20,
                                        icon: Icon(
                                          Icons.close,
                                          color: Colors.black38,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4.6,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50.0),
                        topLeft: Radius.circular(50.0),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          spreadRadius: 3.0,
                          color: Colors.black12,
                          offset: Offset(3.0, 3.0),
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 1.3,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.only(right: 8.0),
                                child: Image.asset('assets/images/venmo3.png'),
                              ),
                              Text(
                                'Venmo',
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '\$ 103,54',
                                style: TextStyle(fontSize: 20),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 16.0),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(
                                    207,
                                    207,
                                    212,
                                    0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: IconButton(
                                  iconSize: 15,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                  // SizedBox.expand(
                  //   child: DraggableScrollableSheet(
                  //     initialChildSize: .2,
                  //     minChildSize: 2,
                  //     maxChildSize: 1.0,
                  //     builder: (BuildContext context, myscrollController) {
                  //       return Container(
                  //         color: Colors.tealAccent[200],
                  //         child: ListView.builder(
                  //           controller: myscrollController,
                  //           itemCount: 25,
                  //           itemBuilder: (BuildContext context, int index) {
                  //             return ListTile(
                  //                 title: Text(
                  //               'Dish $index',
                  //               style: TextStyle(color: Colors.black54),
                  //             ));
                  //           },
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // )
                ],
              ),
              isContinueButtonClicked
                  ? Positioned(
                      bottom: 5,
                      right: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => PaymentMessage(
                                imageUrl: widget.imageUrl,
                                name: widget.name,
                                amount: amount,
                              ),
                            ),
                          );
                        },
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
                              'Pay \$$amount',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Positioned(
                      bottom: 5,
                      left: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () {
                          this.setState(() {
                            isContinueButtonClicked = !isContinueButtonClicked;
                            indexStackDefaultIndex += 1;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 40.0,
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
                              'Continue',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
