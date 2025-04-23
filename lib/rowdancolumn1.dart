import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Pastikan warna AppBar biru
        title: Text('Demo Row dan Column'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Button 1'),
                  onPressed: () {},
                ),
                SizedBox(width: 20), // Menambahkan jarak antar tombol
                ElevatedButton(
                  child: Text('Button 2'),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20), // Menambahkan jarak antar baris
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Button 3'),
                  onPressed: () {},
                ),
                SizedBox(width: 20), // Menambahkan jarak antar tombol
                ElevatedButton(
                  child: Text('Button 4'),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20), // Menambahkan jarak antar baris
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Button 5'),
                  onPressed: () {},
                ),
                SizedBox(width: 20), // Menambahkan jarak antar tombol
                ElevatedButton(
                  child: Text('Button 6'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
