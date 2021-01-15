import 'package:flutter/material.dart';
import 'package:sdgs15/tumbuhan.dart';

class isitumbuhan1 extends StatefulWidget {
  @override
  _isitumbuhan1State createState() => _isitumbuhan1State();
}

class _isitumbuhan1State extends State<isitumbuhan1> {
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
                Text("Raflesia",
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
                child: Text('Bunga Raflesia',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.lightGreen)),
              ),
              Image.asset("assets/img/raflesia.jpg"),
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
                child: Text("Bunga raflesia merupakan salah satu tumbuhan langka yang di lindungi di indonesia."
                    "raflesia adalah genus tumbuhan parasit. ia di temukan di hutan hujan indonesia oleh seorang"
                    "pemandu dari indonesia yg bekerja untuk Rr. Joseph Arnold tahun 1818, dan di namai berdasarkan nama "
                    "Thomas Stamford Raffles Pemimpin ekspedisi itu.",
                    style:
                    TextStyle(fontSize: 15,color: Colors.black87)),

              )
            ],
          ),
        )
    );
  }
}
