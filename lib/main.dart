import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Image Network Demo')
          ),
          body: Padding(
            padding: EdgeInsets.all(16.0),
              child: Center(
                  child: Image.network('https://abrilsuperinteressante.files.wordpress.com/2018/07/52cda0ed982768660e00010fours_des_pyrenees_aspe_2002.jpeg?quality=70&strip=info'),
                ),
          )
        )
      );
  }
}