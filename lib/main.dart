import 'package:flutter/material.dart';

void main() {
  runApp(TabbarDemo());
}

class TabbarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabbar Demo'),
            bottom: TabBar(
              tabs: <Widget>[
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike)
              ],
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike)
            ],
          ),
        )
      )
    );
  }
}