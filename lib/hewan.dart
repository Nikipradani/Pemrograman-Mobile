import 'package:flutter/material.dart';
import 'package:sdgs15/home.dart';


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
      ),
    );
  }
}