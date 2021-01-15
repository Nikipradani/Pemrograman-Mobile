import 'package:flutter/material.dart';
import 'package:sdgs15/artikel.dart';

class isiartikel1 extends StatefulWidget {
  @override
  _isiartikel1State createState() => _isiartikel1State();
}

class _isiartikel1State extends State<isiartikel1> {
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
                child: Text('Upaya Menyelamatkan Badak Kalimantan dari Kepunahan',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.lightGreen)),
              ),
              Image.asset("assets/img/berita1.jpg"),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/img/author.jpg"),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Oleh : Niki Putri Hadi Pradani',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                    Text('18 November 2020',style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold,color: Colors.grey)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Jejak tapak kaki sepanjang 20 cm itu masih segar. kedalamannya mengisyaratkan pemilik jejak merupakan"
                    " satwa berukuran besar. sisa hujan semalam gagal mengaburkan keberadaan satwa yang di duga kuat adalah badak "
                    "Alert memang memantau pergerakan jelajah badak di kawasan Hutan Nyaribungan Mahakam Ulu Kalimantan Timur (Kaltim). "
                    "Badak betina yang diberi nama Pari ini teridentifikasi kerap keluar masuk area perbatasan di antara Provinsi Kaltim "
                    "dan Provinsi Kalimantan Tengah (Kalteng). Personel tim memantau langsung seluruh aktivitasnya sekaligus melindungi "
                    "dari perburuan liar.",
                    style:
                    TextStyle(fontSize: 15,color: Colors.black87)),

              )
            ],
          ),
        )
    );
  }
}