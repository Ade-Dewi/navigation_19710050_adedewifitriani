import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(new MaterialApp(
    home:new halamanpertama(),
    routes: <String,WidgetBuilder>{
      'halamanpertama':(BuildContext context) => new halamanpertama(),
      'halaman kedua':(BuildContext context)=> new halamankedua(),
    }
  ));
}

class halamanpertama extends StatelessWidget{
  Widget build (BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("portal menu akses route"),
        backgroundColor:Colors.red,
      ),
      body: Center(
        child: new IconButton(
          icon: new Icon(
            Icons.headset,
            size: 50.0,
          ),
          onPressed: (){
            Navigator.pushNamed(context, '/halamankedua');
          },
        ),
      ),
    );
  }
}

class halamankedua  extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("speaker"),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.speaker,
            size: 50.0,
            color: Colors.red,
          ),
          onPressed: (){
            Navigator.pushNamed(context,'/halamanpertama');
          },
        ),
      ),
    );
  }
}


