import 'package:flutter/material.dart';
import 'package:figma/test.dart';

class CategoriesScreen extends StatelessWidget {
  // Kategorilerin listesi
  final List<Category> categories = [
    Category(name: 'Tarih', color: Colors.blue),
    Category(name: 'Coğrafya', color: Colors.orange),
    Category(name: 'Vatandaşlık', color: Colors.purple),
    Category(name: 'Güncel', color: Colors.tealAccent),
    Category(name: 'Karışık', color: Color(0xFF7E7878)),
  ];

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
            SizedBox(height: 100.0),
            const Text(
              "Soru çözmek istediğiniz kategoriyi seçebilirsiniz",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 32.0),
            Expanded(
              child: ListView.separated(
                itemCount: categories.length,
                separatorBuilder: (context, index) => SizedBox(height: 16.0), // Kategoriler arasına boşluk eklemek için
                itemBuilder: (context, index) {
                  return buildCategoryButton(context, categories[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Kategori düğmelerini oluşturan fonksiyon
  Widget buildCategoryButton(BuildContext context, Category category) {
    return ElevatedButton(
      onPressed: () {
        // Atla düğmesine tıklanırsa direkt olarak CategoriesScreen'e yönlendirin.
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => TestScreen(),
        ));
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 42.0),
        textStyle: TextStyle(fontSize: 24.0),
        primary: category.color, // Düğme rengini kategoriye uygun olarak ayarlar
      ),
      child: Text(category.name),
    );
  }
}

// Kategori sınıfı
class Category {
  final String name;
  final Color color;

  Category({required this.name, required this.color});
}
