import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> _imagesUrls = [
    'https://www.infoescola.com/wp-content/uploads/2008/04/urso.jpg',
    'https://i.ytimg.com/vi/O0eDNFufRNU/maxresdefault.jpg',
    'https://cacaushow.vteximg.com.br/arquivos/ids/158869-1000-1000/URSO-MARROM.png?v=636675953745500000',
    'https://abrilsuperinteressante.files.wordpress.com/2018/07/52cda0ed982768660e00010fours_des_pyrenees_aspe_2002.jpeg?quality=70&strip=info',
    'https://i1.wp.com/www.portugalnummapa.com/wp-content/uploads/2017/10/urso-pardo-e1507285868406.jpg?resize=1000%2C625&ssl=1'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Fade Images Demos'),
      ),
      body: ListView(
        children: List.generate(_imagesUrls.length, (int index) {
          return Center(
              child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: _imagesUrls[index],
          ));
        }),
      ),
    ));
  }
}
