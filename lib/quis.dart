import 'package:flutter/material.dart';
import 'package:sdgs15/home.dart';

class quis extends StatefulWidget {
  @override
  _quisState createState() => _quisState();
}


class _quisState extends State<quis> {
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
              Text("Quis",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                textAlign: TextAlign.center,)
            ],
          ),
        ),
        body: Column(
          children:<Widget> [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text('Quiz Flora Fauna',
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.lightGreen)),
            ),
            QuizCard(
              "1. Apa saja upaya yang dapat kita lakukan untuk melestarikan hewan dan tumbuhan yang hampir punah",
              "A. Tidak menebang pohon sembarangan dan tidak berburu hewan sembarangan",
              "B. Berburu hewan sembarangan",
              "C. Menebang pohon sembarangan",
            ),
            QuizCard(
              "2. Bagaimana cara mengoptimalkan pengelolaan dan pemanfaatan sumber daya hayati?",
              "A. Menjaga kelestarian sumber daya alam ",
              "B. Tidak menjaga kelestarian sumber daya alam ",
              "C. Tidak peduli kelestarian sumber daya alam ",
            ),
            QuizCard(
              "3. Apa yang menyebabkan tumbuhan tersebut menjadi langka dan hampir punah?",
              "A. Perburuan illegal dan overhunting",
              "B. Perburuan illegal dan overhunting",
              "C. Perburuan illegal dan overhunting",
            ),
          ],
        ),
      ),
    );
  }
}

class QuizCard extends StatelessWidget {
  QuizCard(this.pertanyaan, this.A, this.B, this.C);

  var pertanyaan;
  var A;
  var B;
  var C;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20.5,
      child: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children: <Widget>[
          Text(pertanyaan,
            style:
            TextStyle(fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black87),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(A, style:
            TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black87),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(B, style:
            TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black87),
            ),
          ),Align(
            alignment: Alignment.centerLeft,
            child: Text(C, style:
            TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}