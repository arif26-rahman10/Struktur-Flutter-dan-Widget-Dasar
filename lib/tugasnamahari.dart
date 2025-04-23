import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DeskripsiHariScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class DeskripsiHariScreen extends StatefulWidget {
  @override
  _DeskripsiHariScreenState createState() => _DeskripsiHariScreenState();
}

class _DeskripsiHariScreenState extends State<DeskripsiHariScreen> {
  String deskripsi = "";

  final Map<String, String> hariDeskripsi = {
    "Senin": "Hari yang luar biasa untuk memulai pekerjaanmu.",
    "Selasa": "Tetap semangat mengerjakan tugas.",
    "Rabu": "Selalu bahagia dan bersyukur dengan apa yang telah diperoleh.",
    "Kamis": "Kerja keras untuk menggapai cita-cita.",
    "Jumat": "Jangan lupa untuk beribadah.",
    "Sabtu": "Selamat weekend.",
    "Minggu": "Manfaatkan hari minggumu untuk istirahat.",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tombol Deskripsi Hari"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: hariDeskripsi.keys.map((hari) {
                return ElevatedButton(
                  onPressed: () {
                    setState(() {
                      deskripsi = hariDeskripsi[hari]!;
                    });
                  },
                  child: Text(hari),
                );
              }).toList(),
            ),
            SizedBox(height: 25),
            if (deskripsi.isNotEmpty)
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: Text(
                  deskripsi,
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              )
          ],
        ),
      ),
    );
  }
}
