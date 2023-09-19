import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  double buttonWidth = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF302D2D),
      appBar: AppBar(
        backgroundColor: Color(0xFFE2E8F0),
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,// Hamburger menü ikonu
              onPressed: () {
                //todo  Hamburger menü işlevselliğini burada ekleyin
              },
            ),
            const Text(
              "SoruLAB KPSS",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //todo rapor butonuna tıklanınca yapılacak işlemler
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16.0),
                  textStyle: TextStyle(fontSize: 20.0),
                  fixedSize: Size(buttonWidth, 60.0)),

                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.cases_rounded), // Ayarlar simgesi
                      SizedBox(width: 8.0), // Simge ile metin arasında boşluk bırakmak için
                      Text("Rapor"),
                    ],
                  ),
                )
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                //todo Kategori butonuna tıklanınca yapılacak işlem
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16.0),
                textStyle: TextStyle(fontSize: 20.0),
                  fixedSize: Size(buttonWidth, 60.0)
              ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.category_rounded), // Ayarlar simgesi
                      SizedBox(width: 8.0), // Simge ile metin arasında boşluk bırakmak için
                      Text("Kategori"),
                    ],
                  ),
                )
            ),
            SizedBox(height: 16.0), // Boşluk eklemek için SizedBox
            ElevatedButton(
              onPressed: () {
                //todo Profil butonuna tıklanınca yapılacak işlem
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16.0),
                textStyle: TextStyle(fontSize: 20.0),
                  fixedSize: Size(buttonWidth, 60.0)
              ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.remember_me),
                      SizedBox(width: 8.0), // Simge ile metin arasında boşluk bırakmak için
                      Text("Profil"),
                    ],
                  ),
                )
            ),
            SizedBox(height: 16.0), // Boşluk eklemek için SizedBox
            ElevatedButton(
              onPressed: () {
                //todo Ayarlar butonuna tıklanınca yapılacak işlem
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16.0),
                textStyle: TextStyle(fontSize: 20.0),
                  fixedSize: Size(buttonWidth, 60.0)
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.settings), // Ayarlar simgesi
                    SizedBox(width: 8.0), // Simge ile metin arasında boşluk bırakmak için
                    Text("Ayarlar"),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
