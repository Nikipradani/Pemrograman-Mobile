import 'package:flutter/material.dart';
import 'package:sdgs15/hewan.dart';

class isihewan3 extends StatefulWidget {
  @override
  _isihewan3State createState() => _isihewan3State();
}

class _isihewan3State extends State<isihewan3> {
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
                Text("Elang Jawa",
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
                child: Text('Elang Jawa',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.lightGreen)),
              ),
              Image.asset("assets/img/elangjawa.jpeg"),
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
                child: Text("Elang Jawa merupakan salah satu hewan langka yang di lindungi di indonesia. "
                    "Elang jawa (Nisaetus bartelsi) adalah salah satu spesies elang berukuran sedang dari keluarga Accipitridae "
                    "dan genus Nisaetus yang endemik di Pulau Jawa.",
                    style:
                    TextStyle(fontSize: 15,color: Colors.black87)),
              )
            ],
          ),
        )
    );
  }
}