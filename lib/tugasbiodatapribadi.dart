import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BiodataScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class BiodataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata Diri'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/foto_profil.jpeg'), // pastikan file ada di folder assets
            ),
            SizedBox(height: 20),
            biodataItem('Nama Lengkap', 'Depandi Enda'),
            biodataItem('Tempat, Tanggal Lahir', 'Bengkalis, 10 April 2002'),
            biodataItem('Email', 'depandi@example.com'),
            biodataItem('No HP', '08123456789'),
            biodataItem('Hobby', 'Bermain Musik dan Ngoding'),
          ],
        ),
      ),
    );
  }

  Widget biodataItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label: ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
