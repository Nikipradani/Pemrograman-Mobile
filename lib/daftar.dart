import 'package:flutter/material.dart';
import 'package:sdgs15/main.dart';

class Daftar extends StatefulWidget {
  Daftar();
  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
         alignment: AlignmentDirectional.topCenter,
         children: <Widget>[
     Container(
     decoration: BoxDecoration(
         image: DecorationImage(
         image: AssetImage('assets/img/daftar.jpg'), fit: BoxFit.cover
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
                 Text("DAFTAR", textAlign: TextAlign.center,style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black54
                 ),
                 )
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 300.250),
             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Column(
               children: <Widget>[
                 TextField(
                   decoration: InputDecoration(

                       hintText: "Nama Lengkap"
                   ),),
                 TextField(
                   decoration: InputDecoration(

                       hintText: "Umur"
                   ),),
                 TextField(
                   decoration: InputDecoration(

                       hintText: "Username"
                   ),),
                 TextField(
                   keyboardType: TextInputType.visiblePassword,
                   decoration: InputDecoration(

                       hintText: "Password"
                   ),),
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 550.250),
             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
             height: 50,
             width:204,
             decoration: BoxDecoration(
               shape: BoxShape.rectangle,
               borderRadius: BorderRadius.circular(7.0), color: Colors.green,
               boxShadow: [
                 BoxShadow(
                     color: Colors.green.withOpacity(0),
                     spreadRadius: 2,
                     blurRadius: 10,
                     offset: Offset(0, 3))
               ],
             ),
             child: Column(
               children: <Widget>[
                 InkWell(onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return LoginPage();
                   }),
                   );
                 },
                   child : Text("DAFTAR", textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white
                   ),
                   ),
                 ),
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 620.250),
             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
             height: 50,
             width:204,
             decoration: BoxDecoration(
               shape: BoxShape.rectangle,
               borderRadius: BorderRadius.circular(7.0), color: Colors.green,
               boxShadow: [
                 BoxShadow(
                     color: Colors.green.withOpacity(0),
                     spreadRadius: 2,
                     blurRadius: 10,
                     offset: Offset(0, 3))
               ],
             ),
             child: Column(
               children: <Widget>[
                 InkWell(onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return LoginPage();
                   }),
                   );
                 },
                   child : Text("KEMBALI", textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white
                   ),
                   ),
                 ),
               ],
             ),
           ),
    ])
   );
  }
}

