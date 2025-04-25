import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Profil App',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget{
  final String judul = 'Politeknik Negeri Bengkalis';
  final String lokasi = 'Bengkalis, Riau';
  final String deskripsi = '''Politeknik Negeri Bengkalis (POLBENG) adalah satu-satunya politeknik negeri yang berada di Riau. Pada tanggal 29 Juli 2011, Politeknik Bengkalis resmi menjadi PTN dengan nama Politeknik Negeri Bengalis melalui Peraturan Menteri Pendidikan Nasional (Permendiknas) No. 28 tahun 2011 tentang Pendirian, Organisasi dan Tata Kerja Politeknik Negeri Bengkalis. Hingga saat ini POLBENG sudah memiliki 8 jurusan yaitu tekniik perkapalan, teknik mesin, teknik elektro, teknik sipil, administrasi niaga, teknik informatika, kemaritiman dan bahasa.''';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil POLBENG"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/logo-polbeng.jpeg',
            height: 245.0,
            width: 245.0,
            fit: BoxFit.fill,
          ),
          Container(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                width: 10.0,
                height: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    judul,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    lokasi,
                    style: const TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 15.0,
              ),
              const Icon(
                Icons.star,
                size: 32.0,
                color: Colors.red,
                ),
                const Text(
                  '5', style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              deskripsi,
              style: const TextStyle(
                fontSize: 15.0,
                ),
              softWrap: true,
            ),
          ),
        ],
      )
    );
  }
}