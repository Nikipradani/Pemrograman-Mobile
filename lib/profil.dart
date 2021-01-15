import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sdgs15/home.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sdgs15/main.dart';


class profil extends StatefulWidget {
  @override
  _profilState createState() => _profilState();
}

class _profilState extends State<profil> {
  File _image;

  _getGaleri() async {
    // ignore: deprecated_member_use
    File image = await ImagePicker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      _image = image;
    });
  }

  _getKamera() async {
    // ignore: deprecated_member_use
    File image = await ImagePicker.pickImage(source: ImageSource.camera, imageQuality: 50);
    setState(() {
      _image = image;
    });
  }

  Future <void> _showChoice(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Pilih Gambar ?",
                style: TextStyle(
                    color: Colors.green, fontWeight: FontWeight.bold)),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Galeri"),
                    onTap: () {
                      _getGaleri();
                      Navigator.of(context).pop();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  GestureDetector(
                    child: Text("Kamera"),
                    onTap: () {
                      _getKamera();
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

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
                  Text("Profil",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    textAlign: TextAlign.center,)
                ],
              ),
            ),
            body: Stack(
                children: <Widget>[
                  Container(
                      child: ListView(
                        children: <Widget>[
                          Center(
                              child: Column (children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Center(
                                      child: GestureDetector(
                                        onTap: (){
                                          _showChoice(context);
                                        },
                                        child: CircleAvatar(
                                            radius: 60,
                                            backgroundColor: Colors.grey,
                                            child: _image != null ?
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(100),
                                              child: Image.file(_image,width: 300,height: 300,fit: BoxFit.fitHeight,
                                              ),
                                            )
                                                : Container(
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey.withOpacity(0.8),
                                                        spreadRadius: 1,
                                                        blurRadius: 10,
                                                        offset: Offset(1, 2))
                                                  ],
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(100)),
                                              width: 400,
                                              height: 400,
                                              child: Icon(
                                                Icons.camera_alt,
                                                color: Colors.green,
                                                size: 35,
                                              ),
                                            )
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ])),
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54.withOpacity(0.2),
                                    spreadRadius: 0,
                                    blurRadius: 2,
                                    offset: Offset(1, 1))
                              ],
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text("Nama"),
                                ),
                                Container(
                                  child: Text("Kelas"),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(7.0), color: Colors.green,
                                  ),
                                  child: InkWell(onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return LoginPage();
                                    }),
                                    );
                                  },
                                    child : Text("Keluar", textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white
                                    ),
                                    ),
                                  ),
                                )],
                            ),
                          ),
                        ],
                      )),
                ])));
  }
}