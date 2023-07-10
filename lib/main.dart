import 'package:flutter/material.dart';
import 'package:sayi_tahmin/TahminEkrani.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Text("Tahmin Oyunu",style: TextStyle(color: Colors.black54,fontSize: 36),),
            Image.asset("resimler/zarresmi.jpeg"),
            SizedBox(
              width: 200,
              height:50,
              child: ElevatedButton(
                child: Text("OYUNA BAŞLA"),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => TahminEkrani()));
                  },
              ),
            ),


          ],
        ),
      ),

    );
  }
}
