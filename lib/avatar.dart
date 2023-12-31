import 'package:flutter/material.dart';

import 'login.dart';

class AvatarScreen extends StatefulWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  State<AvatarScreen> createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
  var selectedAvatar = 'assets/loginpic.png'; // Başlangıçta bir varsayılan avatar seçebilirsiniz.
  final List<String> avatarPaths = [
    'assets/avatar1.png',
    'assets/avatar2.png',
    'assets/avatar3.png',
    'assets/avatar4.png',
    'assets/avatar5.png',
    'assets/avatar6.png',
    'assets/avatar7.png',
    'assets/avatar8.png',
    'assets/avatar9.png',
    'assets/avatar10.png',
    'assets/avatar11.png',
    'assets/avatar12.png',
    // Diğer avatar yollarını buraya ekleyin
  ];
  void _onAvatarSelected(String avatarPath) {
    setState(() {
      selectedAvatar = avatarPath;
    });
    Navigator.pop(context, avatarPath);
    //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(selectedAvatar: selectedAvatar)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
        color: Color(0xFF302D2D),
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20.0),
            const Text(
              "Avatarınızı Seçebilirisniz",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            Image.asset(
              selectedAvatar,
              width: 100, // İstediğiniz genişliği ayarlayabilirsiniz
              height: 100, // İstediğiniz yüksekliği ayarlayabilirsiniz
              fit: BoxFit.cover, // Resmi dörtgen olarak görüntüler
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // Her satırda 4 avatar göstermek için
                  mainAxisSpacing: 16.0, // Dikey boşluk
                  crossAxisSpacing: 16.0, // Yatay boşluk
                ),
                itemCount: avatarPaths.length,
                itemBuilder: (context, index) {
                  final avatarPath = avatarPaths[index];
                  return AvatarChoice(
                    imagePath: avatarPath,
                    onAvatarSelected: _onAvatarSelected,
                  );
                },
              ),
            ),
            const SizedBox(height: 20.0),

          ],
        ),
      )
    );
  }
}


class AvatarChoice extends StatelessWidget {
  final String imagePath;
  final Function(String) onAvatarSelected;

  AvatarChoice({
    required this.imagePath,
    required this.onAvatarSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onAvatarSelected(imagePath);
      },
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 40.0,
        ),
      ),
    );
  }
}
