import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayi_tahmin/SonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  const TahminEkrani({Key? key}) : super(key: key);

  @override
  State<TahminEkrani> createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {

  var tfTahmin= TextEditingController();
  int rastgeleSayi=0;
  int kalanHak=5;
  String yonlendirme= "";


  @override
  void initState() {
    super.initState();
    rastgeleSayi= Random().nextInt(101);
    print("rastgele sayi:$rastgeleSayi");

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Tahmin Ekrani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Text("Kalan Hak:$kalanHak",style: TextStyle(color: Colors.pink,fontSize: 36),),
            Text("Yardım: $yonlendirme",style: TextStyle(color: Colors.black54,fontSize: 26),),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextField(
                controller: tfTahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: "TAHMİN",
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height:50,
              child: ElevatedButton(
                child: Text("TAHMİN ET"),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  backgroundColor: Colors.pink,
                ),
                onPressed: () {
                  setState(() {
                    kalanHak=kalanHak-1;
                  });
                  int tahmin= int.parse(tfTahmin.text);
                  if (tahmin == rastgeleSayi){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SonucEkrani(sonuc:true,)));
                    return;
                  }
                  if (tahmin>rastgeleSayi){
                    setState(() {
                      yonlendirme="Tahmini azalt";
                    });
                  }
                  if (tahmin<rastgeleSayi){
                    setState(() {
                      yonlendirme="Tahmini artır";
                    });
                  }
                  if(kalanHak==0){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SonucEkrani(sonuc:false)));
                  }
                  tfTahmin.text= "";


                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
