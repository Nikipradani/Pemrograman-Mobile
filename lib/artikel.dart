import 'package:flutter/material.dart';
import 'package:sdgs15/home.dart';
import 'package:sdgs15/isiartikel1.dart';
import 'package:sdgs15/isiartikel2.dart';
import 'package:sdgs15/isiartikel3.dart';
import 'package:sdgs15/isi.dart';

class artikel extends StatefulWidget {
  @override
  _artikelState createState() => _artikelState();
}

class _artikelState extends State<artikel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Row(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                },
                child: Icon(
                  Icons.arrow_back, color: Colors.white, size: 30,
                ),
              ),
              Text("Artikel",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                textAlign: TextAlign.center,)
            ],
          ),
        ),
        body: ListView(
          children:<Widget> [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white60,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3))
                ],
              ),
              child: Column(
                children: <Widget>[
                  InkWell(onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => isiartikel1()),
                    );
                  },
                      child: NewsCard(
                          "Upaya Menyelamatkan Badak",
                          "Jejak tapak kaki sepanjang 20 cm itu masih segar. kedalamannya mengisyaratkan pemilik jejak merupakan",
                          AssetImage("assets/img/berita1.jpg"))
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => isiartikel2()),
                    );
                  },
                      child: NewsCard(
                          "Senangnya, paus biru yang",
                          "Paus biru Antartika dinyatakan sebagai hewan yang hampir punah",
                          AssetImage("assets/img/paus.jpg"))
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => isiartikel3()),
                    );
                  },
                      child: NewsCard(
                          "Ini, Tumbuhan Pertama di Bumi",
                          "Jangan pernah meremehkan lumut, ketika tanaman sederhana pertama kali",
                          AssetImage("assets/img/lumut.jpg"))
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}