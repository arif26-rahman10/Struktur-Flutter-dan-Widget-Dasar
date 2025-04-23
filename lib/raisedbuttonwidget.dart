import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App with AppBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Halaman utama
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Inilah navbar-nya
        title: Text('Demo Flutter'), // Judul yang muncul di navbar
        backgroundColor: Colors.blue, // Warna AppBar
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Hello'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Event Handling'),
                  content: Text('Hello World!'),
                  actions: [
                    TextButton(
                      child: Text('Tutup'),
                      onPressed: () {
                        Navigator.of(context).pop(); // Menutup dialog
                      },
                    )
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
