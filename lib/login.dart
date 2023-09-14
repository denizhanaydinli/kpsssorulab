import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(height: 72.0),
                    Image.asset(
                      "assets/loginpic.png",
                      scale: 3.0,
                      fit: BoxFit.scaleDown,
                    ),
                    SizedBox(height: 48.0), // Resim ile metin arasında bir boşluk ekler
                    Container(
                      width: 600, // Genişlik
                      padding: EdgeInsets.all(10.0), // İçeriği kenara doğru boşluk bırakır
                      decoration: BoxDecoration(
                        color: Colors.white, // Beyaz arka plan rengi
                        borderRadius: BorderRadius.circular(10.0), // Kenarlığın yuvarlak köşeli olması
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Kullanıcı Adı',
                          border: InputBorder.none, // Kenarlığı kaldırır
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
