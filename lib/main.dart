import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:sdgs15/LoginAnimation.dart';
import 'package:flutter/scheduler.dart';

import 'daftar.dart';

void main() => runApp(new MyApp()); //bagian main

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        title: "FANA", //judul aplikasi
        debugShowCheckedModeBanner: false, //untuk menghilangkan tulisan debug
        home: new LoginPage(), //untuk mengetahui kita berada di home apa
      );
    }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin{
  var statusClick=0;

  TextEditingController editingControllerUser;
  TextEditingController editingControllerPass;
  AnimationController animationControllerButton;
  @override
  void initState() {
    editingControllerUser= new TextEditingController(text: '');
    editingControllerPass= new TextEditingController(text: '');
    // TODO: implement initState
    super.initState();
    animationControllerButton=AnimationController(duration: Duration(seconds: 3), vsync: this)
    ..addStatusListener((status) {
      if (status== AnimationStatus.dismissed){
        setState(() {
          statusClick=0;
    });
      }
      });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationControllerButton.dispose();
  }

  Future<Null> _playAnimation() async{
    try{
      await animationControllerButton.forward();
      await animationControllerButton.reverse();
    } on TickerCanceled{}

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/login.png'), fit: BoxFit.cover
          )
        ),
        child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
              Column(children: <Widget>[
                Padding(padding: const EdgeInsets.only(top: 300.0),),
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
                      Text("FANA", textAlign: TextAlign.center,style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black54
                      ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: editingControllerUser,
                        decoration: InputDecoration(
                        icon: Icon(Icons.person_outline, color: Colors.white,),
                        hintText: "Username"
                      ),),
                      TextField(
                        controller: editingControllerPass,
                         keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                        icon: Icon(Icons.lock_outline, color: Colors.white,),
                          hintText: "Password"
                      ),),
                      FlatButton(padding: const EdgeInsets.only(top: 100.0,bottom: 30.0),
                      onPressed: null,
                        child: Text("",
                        style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.5
                        ),),
                      )
                    ],
                  ),

                ),

              ],),
                Container(
                  margin: EdgeInsets.only(top: 480.250),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 50,
                  width:280,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30.0), color: Colors.green,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.green.withOpacity(0),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 6))
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Daftar();
                        }),
                        );
                      },
                        child : Text("Sign Up", textAlign: TextAlign.center,style: TextStyle(fontSize: 20, color: Colors.white
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
                 statusClick==0
                 ? new InkWell(
                  onTap: (){
                    setState(() {
                      statusClick=1;
                    });
                    _playAnimation();
                  },
                  child: new SignIn())
                : new StartAnimation(
                   buttonController: animationControllerButton.view,
                   user: editingControllerUser.text,
                   pass: editingControllerPass.text,
                   )
            ],)
          ],
        ),
      ),
    );
  }
}
class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(60.0),
      child: new Container(
      alignment: FractionalOffset.center,
      width: 320.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(const Radius.circular(30.0))
      ),
      child: Text("Sign In",
      style: TextStyle(color: Colors.white,
      fontSize: 20.0,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.3
      ),
      )
    ),
    );
  }
}