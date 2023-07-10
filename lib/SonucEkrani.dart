import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {

  bool sonuc;
  SonucEkrani({required this.sonuc});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            widget.sonuc ? Image.asset("resimler/mutluresim.png") :Image.asset("resimler/uzgunesim.png"),
            Text(widget.sonuc ? "KAZANDINIZ": "KAYBETTİNİZ",style: TextStyle(color: Colors.black54,fontSize: 36),),
            SizedBox(
              width: 200,
              height:50,
              child: ElevatedButton(
                child: Text("TEKRAR DENE"),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
