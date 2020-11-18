import 'package:flutter/material.dart';
import 'package:sdgs15/home.dart';

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
      ),
    );
  }
}
