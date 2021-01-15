import 'package:flutter/material.dart';
import 'package:sdgs15/home.dart';
import 'package:sdgs15/isihewan1.dart';
import 'package:sdgs15/isihewan2.dart';
import 'package:sdgs15/isihewan3.dart';
import 'package:sdgs15/isi.dart';


class hewan extends StatefulWidget {
  hewan();

  @override
  _hewanState createState() => _hewanState();
}

class _hewanState extends State<hewan> {
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
              Text("Hewan",
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
                      MaterialPageRoute(builder: (context) => isihewan1()),
                    );
                  },
                      child: NewsCard(
                          "Badak Jawa",
                          "Badak jawa merupakan salah satu hewan langka yang di lindungi di indonesia.",
                          AssetImage("assets/img/badakjawa.jpeg"))
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => isihewan2()),
                    );
                  },
                      child: NewsCard(
                          "Harimau Sumatera",
                          "Harimau sumatera terancam punah saat ini, mari kita menjaga dan melindungi harimau sumatera",
                          AssetImage("assets/img/harimausumatera.jpeg"))
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => isihewan3()),
                    );
                  },
                      child: NewsCard(
                          "Elang Jawa",
                          "Elang jawa  juga merukpakan salah satu hewan yang di lindungi di indonesia",
                          AssetImage("assets/img/elangjawa.jpeg"))
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