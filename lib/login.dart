import 'package:flutter/material.dart';

import 'hedefsoru.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var kullaniciAdi = '';
  void _onLoginButtonPressed() {

    setState(() {
      kullaniciAdi;  // TextField'dan gelen değer burada atanmalı.
    });
    // Burada yapılacak işlem: Kullanıcı adı ve şifreyi kontrol edebilir ve giriş işlemi yapabilirsiniz.

    // Giriş başarılı ise hedef ekranına yönlendirme
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HedefScreen(kullaniciAdi: kullaniciAdi)),
    );
  }
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
                        onChanged: (value) {
                          // Kullanıcının girdiği metni burada alabilirsiniz.
                          setState(() {
                             kullaniciAdi=value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'Kullanıcı Adı',
                          border: InputBorder.none, // Kenarlığı kaldırır
                        ),
                      ),
                    ),
                    SizedBox(height: 32.0),
                    ElevatedButton(
                        onPressed: _onLoginButtonPressed,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 48.0), // Butonun iç boşluğunu ayarlar
                        textStyle: TextStyle(fontSize: 20.0), // Buton metninin yazı tipi boyutunu ayarlar
                      ),
                        child: Text('İlerle'),
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
