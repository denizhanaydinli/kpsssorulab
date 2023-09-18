import 'package:flutter/material.dart';

import 'categories.dart';

class TestScreen extends StatefulWidget {
  final Category category;
  TestScreen({required this.category, Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF302D2D),
      body: Column(
        children: [
          Container(
            color: widget.category.color, // Kategori rengine uygun olarak değiştirin
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: Text(
                widget.category.name, // Kategori adını buraya ekleyin
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
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
          const Expanded(child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
