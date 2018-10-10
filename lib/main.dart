import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      title: 'Drawer',
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(title: new Text('Drawer Demo')),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: new Text(''),
              decoration: BoxDecoration(
                color: Colors.blue
              ), 
            ),
            ListTile(
              title: Text('Page 1'),
              onTap: () => print('do something'),
            ),
            ListTile(
              title: Text('Page 2'),
              onTap: () {
                print('Do something 2');
              },
            ),
            ListTile(
              title: Text('Close'),
              onTap: () {
                Navigator.of(context).pop();
              },)
          ],
        )  
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open Drawer'),
          onPressed: () {
              _key.currentState.openDrawer();
          },
        )
      ),
    );
  }
}