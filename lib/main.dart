import 'package:figma/constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,// debug bannerini kaldırır
      title: 'KPSS SORULAB',
      theme: ThemeData(
        primaryColor: kBackgroundColor,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF302D2D),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                scale: 2.0,
                "assets/kitap.png",
                fit: BoxFit.scaleDown,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "KPSS Soru Bankasına Hoşgeldiniz",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // Diğer metin veya widget'ları buraya ekleyebilirsiniz
          ],
        ),
      ),
    );
  }
}
