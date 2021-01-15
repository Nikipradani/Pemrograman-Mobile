import 'package:flutter/material.dart';
import 'package:sdgs15/hewan.dart';

class isihewan1 extends StatefulWidget {
  @override
  _isihewan1State createState() => _isihewan1State();
}

class _isihewan1State extends State<isihewan1> {
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
                Text("Badak Jawa",
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
                child: Text('Badak Jawa',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.lightGreen)),
              ),
              Image.asset("assets/img/badakjawa.jpeg"),
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
                child: Text("Badak jawa, atau badak bercula-satu kecil (Rhinoceros sondaicus) adalah anggota famili Rhinocerotidae "
                    "dan satu dari lima badak yang masih ada. Badak ini masih termasuk ke dalam genus yang sama dengan badak india "
                    "dan memiliki kulit bermosaik yang menyerupai baju baja. Badak ini memiliki panjang 3,1–3,2 m dan tinggi 1,4–1,7 m. "
                    "Badak ini lebih kecil daripada badak india dan lebih dekat dalam besar tubuh dengan badak hitam. "
                    "Ukuran culanya biasanya lebih sedikit daripada 20 cm, lebih kecil daripada cula spesies badak lainnya.",
                    style:
                    TextStyle(fontSize: 15,color: Colors.black87)),
              )
            ],
          ),
        )
    );
  }
}