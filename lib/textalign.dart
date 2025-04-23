import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mengatur Teks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String teks1 = "Text pada paragraf ini dibuat menggunakan nilai TextAlign.left sehingga teks ditampilkan rata kiri";
  final String teks2 = "Text pada paragraf ini dibuat menggunakan nilai TextAlign.center sehingga teks ditampilkan rata tengah";
  final String teks3 = "Text pada paragraf ini dibuat menggunakan nilai TextAlign.right sehingga teks ditampilkan rata kanan";
  final String teks4 = "Text pada paragraf ini dibuat menggunakan nilai TextAlign.justify sehingga teks ditampilkan rata kiri-kanan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Metode Text.textAlign'),
        backgroundColor: Colors.blue, 
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              this.teks1,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              this.teks2,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              this.teks3,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            child: Text(
              this.teks4,
              style: TextStyle(
                fontSize: 18.0,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
