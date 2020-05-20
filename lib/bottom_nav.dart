import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 70.0,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Icon(Icons.home, color: Colors.blue),
          ),
          Expanded(
            flex: 1,
            child: Icon(Icons.search),
          ),
          Expanded(
            flex: 1,
            child: LayoutBuilder(builder: (context, constraint) {
              return Container(
                height: 65,
                width: 50,
                // padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(50, 50, 51, 1.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Icon(
                  Icons.compare_arrows,
                  color: Colors.white,
                ),
              );
            }),
          ),
          Expanded(flex: 1, child: Icon(Icons.lock)),
          Expanded(
            flex: 1,
            child: Icon(Icons.notifications),
          )
        ],
      ),
    );
  }
}
