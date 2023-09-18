import 'package:figma/report.dart';
import 'package:flutter/material.dart';

import 'categories.dart';

class TestScreen extends StatefulWidget {
  final Category category;
  TestScreen({required this.category, Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  void _openReportPage() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ReportScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF302D2D),
      appBar: AppBar(
        backgroundColor: widget.category.color,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu), // Hamburger menü ikonu
              onPressed: _openReportPage,
            ),
            Text(
              widget.category.name, // Kategori adını buraya ekleyin
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          SizedBox(height: 16.0),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: Text(
                "Aşağıdakilerden hangisi ...................................................", // Seçilen kategori adını buraya ekleyin
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Center(
            child: SizedBox(), // Ortalamak için boş bir SizedBox kullanabilirsiniz
          ),
        ],
      ),
    );
  }
}
