import 'package:flutter/material.dart';
import 'package:sdgs15/home.dart';
import 'package:sdgs15/isitumbuhan1.dart';
import 'package:sdgs15/isitumbuhan2.dart';
import 'package:sdgs15/isitumbuhan3.dart';

import 'isitumbuhan.dart';


class tumbuhan extends StatefulWidget {
  tumbuhan();

  @override
  _tumbuhanState createState() => _tumbuhanState();
}

  class _tumbuhanState extends State<tumbuhan> {
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
                Text("Tumbuhan",
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
                      MaterialPageRoute(builder: (context) => isitumbuhan1()),
                    );
                  },
                      child: NewsCard(
                          "Bunga Raflesia",
                          "Bunga raflesia merupakan salah satu tumbuhan langka yang di lindungi di indonesia.",
                          AssetImage("assets/img/raflesia.jpg"))
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => isitumbuhan2()),
                    );
                  },
                      child: NewsCard(
                          "Bunga Edelweis Jawa",
                          "Bunga edelweis jawa terancam punah saat ini, mari kita menjaga dan melindungi bunga edelweis jawa",
                          AssetImage("assets/img/edelweis.jpg"))
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => isitumbuhan3()),
                    );
                  },
                      child: NewsCard(
                          "Bunga Anggrek Bulan",
                          "Bunga anggrek bulan juga merukpakan salah satu bunga yang di lindungi di indonesia",
                          AssetImage("assets/img/anggrekbulan.jpg"))
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