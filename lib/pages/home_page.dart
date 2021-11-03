import 'package:flutter/material.dart';
import 'package:tecunqr/widgets/custom_navigator_bar.dart';
import 'package:tecunqr/widgets/scanbutton.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Container();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(icon: Icon(Icons.filter_center_focus), onPressed: () {})
        ],
      ),
      body: Center(
        child: Text('Home Page'),
      ),
      bottomNavigationBar: CustomNavigatorBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
