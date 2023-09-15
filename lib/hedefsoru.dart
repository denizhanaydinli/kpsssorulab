import 'package:figma/login.dart';
import 'package:flutter/material.dart';

class HedefScreen extends StatefulWidget {
  final String kullaniciAdi;
  //const HedefScreen({super.key});
  HedefScreen({Key? key, required this.kullaniciAdi, required selectedAvatar}) : super(key: key);

  @override
  State<HedefScreen> createState() => _HedefScreenState();
}

class _HedefScreenState extends State<HedefScreen> {
  void _onLoginButtonPressed() {
    // Burada yapılacak işlem: Kullanıcı adı ve şifreyi kontrol edebilir ve giriş işlemi yapabilirsiniz.

    // Giriş başarılı ise hedef ekranına yönlendirme
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen(selectedAvatar: '',)),//todo burası yeni ekrana yönlendirilecek
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
                    SizedBox(height: 100.0),
                    Text(
                      "Merhaba ${widget.kullaniciAdi}, günlük kaç soru çözme bildirimi almak istersiniz?",
                      style: TextStyle(
                        color: Colors.white, // Yazı rengi beyaz
                        fontWeight: FontWeight.bold, // Kalın yazı tipi
                        fontSize: 20.0, // Yazı boyutu
                      ),
                    ),
                    SizedBox(height: 100.0),
                    Image.asset(
                      "assets/hedefsoru.png",
                      scale: 3.0,
                      fit: BoxFit.scaleDown,
                    ),
                    SizedBox(height: 48.0),
                // Resim ile metin arasında bir boşluk ekler
                    Container(
                      width: 600, // Genişlik
                      padding: EdgeInsets.all(10.0), // İçeriği kenara doğru boşluk bırakır
                      decoration: BoxDecoration(
                        color: Colors.white, // Beyaz arka plan rengi
                        borderRadius: BorderRadius.circular(10.0), // Kenarlığın yuvarlak köşeli olması
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Soru Hedefi',
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
