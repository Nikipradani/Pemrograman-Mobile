import 'package:flutter/material.dart';
import 'package:sdgs15/artikel.dart';

class isiartikel3 extends StatefulWidget {
  @override
  _isiartikel3State createState() => _isiartikel3State();
}

class _isiartikel3State extends State<isiartikel3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  splashColor: Colors.green,
                  onTap: (){
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context){
                          return artikel();
                        }));
                  },
                  child: Icon(
                    Icons.arrow_back,color: Colors.white,size: 30,
                  ),
                ),
                Text("Berita Terkini",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                  textAlign: TextAlign.center,)
              ],
            ),
          ),
          body: Column(
            children:<Widget> [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text('Ini, Tumbuhan Pertama di Bumi, Bisa Hancurkan Bebatuan',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.lightGreen)),
              ),
              Image.asset("assets/img/lumut.jpg"),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/img/author.jpg"),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Oleh : Alif Rachman Saputro',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                    Text('18 November 2020',style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold,color: Colors.grey)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Jangan pernah meremehkan lumut, ketika tanaman sederhana pertama kali tiba di darat, hampir setengah "
                    "miliar tahun yang lalu, mereka memicu zaman es dan kepunahan masal kehidupan laut "
                    "Sekitar 35 juta tahun kemudian, lapisan es menutupi sebagian besar planet secara singkat dan terjadi kepunahan massal. "
                    "Tingkat karbon dioksida mungkin turun tajam sebelum es tiba, tapi tidak ada yang tahu mengapa. "
                    "Tim Lenton dari University of Exeter, Inggris, dan rekannya berpikir bahwa lumut adalah penyebabnya. ",
                    style:
                    TextStyle(fontSize: 15,color: Colors.black87)),
              )
            ],
          ),
        )
    );
  }
}