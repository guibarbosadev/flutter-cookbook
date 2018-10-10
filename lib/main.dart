import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        errorColor: Colors.red,
      ),
      home: new MyHomePage(
        title: 'Theme'
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({@required this.title});

  @override
  State<StatefulWidget> createState() {
      return new _MyHomePageState(title: title);
    }
}

class _MyHomePageState extends State<MyHomePage> {

  final String title;
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  _MyHomePageState({@required this.title});

   void _showSnackBar() {
     print('clicked');
      _key.currentState.showSnackBar(new SnackBar(
       content: new Text('Some content'),
       action: new SnackBarAction(
         label: 'Undo' ,
         onPressed: () {
           _key.currentState.hideCurrentSnackBar();
         },
       )
    ));
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _key,
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Show Snackbar'),
          onPressed: () => _showSnackBar(),
          )
      ),
    );
  }
}