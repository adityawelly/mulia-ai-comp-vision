import 'package:flutter/material.dart';
import 'scan_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Warna AppBar
        elevation: 4, // Efek bayangan
        centerTitle: true, // Judul di tengah
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/icon.png', // Ganti dengan path logo yang sesuai
              height: 32, // Ukuran logo kecil
            ),
            SizedBox(width: 10),
            Text(
              'Mulia Industry',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/icon.png',
              width: 120,
              height: 120,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 250,
              height: 80,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScanPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 24),
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Tombol membulat
                  ),
                ),
                child: Text('Scan APD'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
