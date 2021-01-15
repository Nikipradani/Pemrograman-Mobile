import 'package:flutter/material.dart';
import 'package:sdgs15/hewan.dart';

class isihewan2 extends StatefulWidget {
  @override
  _isihewan2State createState() => _isihewan2State();
}

class _isihewan2State extends State<isihewan2> {
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
                          return hewan();
                        }));
                  },
                  child: Icon(
                    Icons.arrow_back,color: Colors.white,size: 30,
                  ),
                ),
                Text("Harimau Sumatera",
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
                child: Text('Harimau Sumatera',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.lightGreen)),
              ),
              Image.asset("assets/img/harimausumatera.jpeg"),
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
                child: Text("Harimau Sumatera merupakan salah satu hewan langka yang di lindungi di indonesia. "
                    "Harimau sumatra (bahasa Latin: Panthera tigris sumatrae) adalah subspesies harimau yang habitat aslinya di pulau Sumatra,"
                    " dan merupakan satu dari enam subspesies harimau yang masih bertahan hidup hingga saat ini dan termasuk dalam "
                    "klasifikasi satwa kritis yang terancam punah (critically endangered) dalam daftar merah spesies terancam yang "
                    "dirilis Lembaga Konservasi Dunia IUCN. Populasi liar diperkirakan antara 400-500 ekor, terutama hidup di "
                    "taman-taman nasional di Sumatra. Uji genetik mutakhir telah mengungkapkan tanda-tanda genetik yang unik, yang "
                    "menandakan bahwa subspesies ini mungkin berkembang menjadi spesies terpisah, bila berhasil lestari.",
                    style:
                    TextStyle(fontSize: 15,color: Colors.black87)),
              )
            ],
          ),
        )
    );
  }
}