import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Container();
    return BottomNavigationBar(items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.map),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.arrow_drop_down),
      )
    ]);
  }
}
