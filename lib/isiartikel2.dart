import 'package:flutter/material.dart';
import 'package:sdgs15/artikel.dart';

class isiartikel2 extends StatefulWidget {
  @override
  _isiartikel2State createState() => _isiartikel2State();
}

class _isiartikel2State extends State<isiartikel2> {
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
                child: Text('Senangnya, paus biru yang hampir punah terlihat lagi',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.lightGreen)),
              ),
              Image.asset("assets/img/paus.jpg"),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/img/author.jpg"),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Oleh : Firratus Saadah',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                    Text('18 November 2020',style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold,color: Colors.grey)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Paus biru Antartika dinyatakan sebagai hewan yang hampir punah. Tapi setelah lama"
                    "bersembunyi, akhirnya penampakan hewan ini kembali di saksikan. "
                    "Tim peneliti internasional yang dipimpin oleh Susannah Calderan dari Asosiasi Ilmu Kelautan "
                    "Skotlandia (SAMS) akhirnya melakukan pencarian detail tentang penampakan paus biru. Sampai akhirnya "
                    "dikumpulkan 58 penampakan paus biru."
                    "Peneliti tak hanya mencari paus secara langsung tapi juga menggunakan perangkat pendengar akustik. "
                    "Perangkat ini akan mendeteksi sinyal akustik dari panggilan paus dengan frekuensi rendah dari jarak jauh.",
                    style:
                    TextStyle(fontSize: 15,color: Colors.black87)),
              )
            ],
          ),
        )
    );
  }
}