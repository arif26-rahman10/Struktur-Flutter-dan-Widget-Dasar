import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DataMahasiswaScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class DataMahasiswaScreen extends StatelessWidget {
  final List<List<String>> dataMahasiswa = [
    ['1', '1106315', 'Depandi Enda'],
    ['2', '1106316', 'Budi Handoyo'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabel Data Mahasiswa'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
        child: Table(
          border: TableBorder.all(
            color: Colors.black,
            width: 0.5, // ❗️lebih tipis agar lebih rapat
          ),
          columnWidths: {
            0: FixedColumnWidth(40),
            1: FixedColumnWidth(100),
            2: FlexColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              decoration: BoxDecoration(color: Colors.grey[300]),
              children: [
                tableCell('No', isHeader: true),
                tableCell('NIM', isHeader: true),
                tableCell('NAMA', isHeader: true),
              ],
            ),
            ...dataMahasiswa.map((row) {
              return TableRow(
                children: row.map((cell) => tableCell(cell)).toList(),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget tableCell(String text, {bool isHeader = false}) {
    return Container(
      height: 38, // ❗️sedikit lebih pendek (default sebelumnya 45)
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0), // ❗️lebih kecil
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.5, // ❗️font sedikit dikecilkan biar nggak mepet
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
