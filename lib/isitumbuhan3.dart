import 'package:flutter/material.dart';
import 'package:sdgs15/tumbuhan.dart';

class isitumbuhan3 extends StatefulWidget {
  @override
  _isitumbuhan3State createState() => _isitumbuhan3State();
}

class _isitumbuhan3State extends State<isitumbuhan3> {
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
                          return tumbuhan();
                        }));
                  },
                  child: Icon(
                    Icons.arrow_back,color: Colors.white,size: 30,
                  ),
                ),
                Text("Anggrek Bulan",
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
                child: Text('Bunga Anggrek Bulan',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.lightGreen)),
              ),
              Image.asset("assets/img/anggrekbulan.jpg"),
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
                child: Text("Bunga Anggrek Bulan merupakan salah satu tumbuhan langka yang di lindungi di indonesia. "
                    "Anggrek Bulan atau puspa pesona adalah salah satu bunga nasional indonesia. pertama kali di temukan "
                    "oleh seorang ahli botani belanda, Dr. C. L. Blume. Tanaman anggrek ini tersebar luas mulai dari "
                    "Malaysia, Indonesia, Filipina, Papua, hingga ke Australia. Cara hidupnya secara epifit dengan menempel"
                    "pada batang atau cabang pohon di hutan-hutan dan tumbuh subur hingga 600 meter di atas permukaan laut.",
                    style:
                    TextStyle(fontSize: 15,color: Colors.black87)),
              )
            ],
          ),
        )
    );
  }
}
