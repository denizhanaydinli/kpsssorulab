import 'package:flutter/material.dart';
import 'categories.dart';

class TimePeriodScreen extends StatefulWidget {
  const TimePeriodScreen({super.key});

  @override
  State<TimePeriodScreen> createState() => _TimePeriodScreenState();
}

class _TimePeriodScreenState extends State<TimePeriodScreen> {
  TimeOfDay? startTime;
  TimeOfDay? endTime;

  Future<void> _selectStartTime() async {
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: startTime ?? TimeOfDay.now(),
    );

    if (pickedTime != null && pickedTime != startTime) {
      setState(() {
        startTime = pickedTime;
      });
    }
  }

  Future<void> _selectEndTime() async {
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: endTime ?? TimeOfDay.now(),
    );

    if (pickedTime != null && pickedTime != endTime) {
      setState(() {
        endTime = pickedTime;
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
                    SizedBox(height: 100.0),
                    const Text(
                      "Lütfen Bildirim Almak İstediğiniz Zaman Aralığını Seçiniz",
                      style: TextStyle(
                        color: Colors.white, // Yazı rengi beyaz
                        fontWeight: FontWeight.bold, // Kalın yazı tipi
                        fontSize: 20.0, // Yazı boyutu
                      ),
                    ),

                    SizedBox(height: 48.0),
                    // Başlangıç saati
                    Container(
                      width: 600, // Genişlik
                      padding: EdgeInsets.all(10.0), // İçeriği kenara doğru boşluk bırakır
                      decoration: BoxDecoration(
                        color: Colors.white, // Beyaz arka plan rengi
                        borderRadius: BorderRadius.circular(10.0), // Kenarlığın yuvarlak köşeli olması
                      ),
                      child: InkWell(
                        onTap: _selectStartTime,
                        child: TextFormField(
                          enabled: false,
                          controller: startTime != null ? TextEditingController(
                            text: '${startTime!.hour}:${startTime!.minute}',

                          ):null,
                          decoration: InputDecoration(
                            hintText: 'Başlangıç Saati',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 64.0),
                    // Bitiş Saati
                    Container(
                      width: 600, // Genişlik
                      padding: EdgeInsets.all(10.0), // İçeriği kenara doğru boşluk bırakır
                      decoration: BoxDecoration(
                        color: Colors.white, // Beyaz arka plan rengi
                        borderRadius: BorderRadius.circular(10.0), // Kenarlığın yuvarlak köşeli olması
                      ),
                      child: InkWell(
                        onTap: _selectEndTime,
                        child: TextFormField(
                            enabled:false,
                           controller: endTime != null ? TextEditingController(
                             text: '${endTime!.hour}:${endTime!.minute}',
                           ) : null,

                          decoration: const InputDecoration(
                            hintText: 'Bitiş Saati',
                            border: InputBorder.none, // Kenarlığı kaldırır
                          ),
                        ),
                      )

                    ),
                    SizedBox(height: 32.0),

                    ElevatedButton(
                        onPressed:(){
                         if(startTime != null && endTime != null){
                           // Zaman aralığını kullanabilirsiniz
                           print('Başlangıç Saati: ${startTime!.format(context)}');
                           print('Bitiş Saati: ${endTime!.format(context)}');
                         }
                         else{
                           // Kullanıcı henüz saatleri seçmedi.
                           ScaffoldMessenger.of(context).showSnackBar(
                             SnackBar(
                               content: Text('Lütfen başlangıç ve bitiş saatlerini seçin.'),
                             ),
                           );
                         }
                        },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                      textStyle: TextStyle(fontSize: 18.0),
                      primary: Color(0xFF7E7878),
                    ),
                      child: Text('Zaman aralığını kaydet'),
                    ),

                    SizedBox(height: 32.0),

                    ElevatedButton(
                      onPressed: () {
                        // Atla düğmesine tıklanırsa direkt olarak CategoriesScreen'e yönlendirin.
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => CategoriesScreen(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                        textStyle: TextStyle(fontSize: 18.0),
                        primary: Color(0xFF7E7878), // Düğme rengini istediğiniz bir renkle değiştirebilirsiniz.
                      ),
                      child: Text('İlerle'),
                    ),

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
