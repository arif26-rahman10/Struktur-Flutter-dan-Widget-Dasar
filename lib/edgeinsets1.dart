import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: EdgeInsetsOnlyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class EdgeInsetsOnlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdgeInsets.only App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metode EdgeInsets.only'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.tealAccent,
              margin: const EdgeInsets.only(
                top: 50.0,
              ),
              padding: const EdgeInsets.only(
                left: 70.0,
                right: 10.0,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Button'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
