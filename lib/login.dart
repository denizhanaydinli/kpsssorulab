import 'package:flutter/material.dart';
import 'avatar.dart';
import 'hedefsoru.dart';

class LoginScreen extends StatefulWidget {
  String selectedAvatar = 'assets/loginpic.png';

  LoginScreen({required this.selectedAvatar, Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var kullaniciAdi = '';
  String selectedAvatar = 'assets/loginpic.png';

  void _onLoginButtonPressed() async{

    setState(() {
      kullaniciAdi;
     // TextField'dan gelen değer burada atanmalı.
    });
    //todo buraya eğer kullanıcı ismini girmemişse defaultuser1234 gibi sürekli artan bir değer girecek
    // Burada yapılacak işlem: Kullanıcı adı ve şifreyi kontrol edebilir ve giriş işlemi yapabilirsiniz.

    // Giriş başarılı ise hedef ekranına yönlendirme
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HedefScreen(kullaniciAdi: kullaniciAdi,selectedAvatar: widget.selectedAvatar)),
    );

  }
  void _onAvatarButtonPressed() async {
    var returnedAvatar = await Navigator.push(context, MaterialPageRoute(builder: (context) => AvatarScreen()));
    if (returnedAvatar != null) {
      setState(() {
        selectedAvatar = returnedAvatar;
      });
    }
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
                    InkWell(
                      onTap: () {
                        _onAvatarButtonPressed();
                      },
                      child: CircleAvatar( // Yeni avatarı yuvarlak olarak göstermek için CircleAvatar kullanın
                        backgroundImage: AssetImage(
                          selectedAvatar,
                        ),
                        radius: 50.0,
                      ),
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
