import 'package:flutter/material.dart';
import 'package:sdgs15/artikel.dart';
import 'package:sdgs15/hewan.dart';
import 'package:sdgs15/quis.dart';
import 'package:sdgs15/tumbuhan.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
          return Scaffold(
            body: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(

                      image: DecorationImage(
                          image: AssetImage('assets/img/Dashboard.png'), fit: BoxFit.cover
                      )
                  ),
                ),

                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 50.100),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                    height: 180,
                    width:400,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(0.5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("FANA", textAlign: TextAlign.center,style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green
                        ),
                        )
                      ],
                ),
            ),
                Container(
                  margin: EdgeInsets.only(top: 200.250),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 50,
                  width:204,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(0.5), color: Colors.green,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => tumbuhan()),
                        );
                      },
                       child: Text("Tumbuhan Langka", textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white
                       ),
                      ),),
                    ],
                  ),
                ) ,
                Container(
                  margin: EdgeInsets.only(top: 270.250),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 50,
                  width:204,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(0.5), color: Colors.green,
                  ),
                  child: Column(
                    children: <Widget>[
                      InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => hewan()),
                        );
                      },
                      child : Text("Hewan Langka",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white,
                      ),
                      ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 340.250),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 50,
                  width:204,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(0.5), color: Colors.green,
                  ),
                  child: Column(
                    children: <Widget>[
                      InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => artikel()),
                      );
                      },
                      child : Text("Artikel", textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white
                      ),
                      ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 410.250),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 50,
                  width:204,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(0.5), color: Colors.green,
                  ),
                  child: Column(
                    children: <Widget>[
                      InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => quis()),
                      );
                      },
                      child : Text("Quis", textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white
                      ),
                      ),
                      ),
                    ],
                  ),
                ),
            ],
            ),
          );
  }
}



