import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  List<String> _itemsToShow = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            return portraitView();
          } else {
            return landscapeView();
          }
        },
      ),
    );
  }

  Widget portraitView() {
    return ListView(
      children: List.generate(_itemsToShow.length, (int index) {
        return ListTile(
          title: Center(child: Text(_itemsToShow[index])),
        );
      })
    );
  }

  Widget landscapeView() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(_itemsToShow.length, (int index) {
          return Card(
            child: Center(
              child: Text(_itemsToShow[index])
            ),
          );
        })
    );
  }
}