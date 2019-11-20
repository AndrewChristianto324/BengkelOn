import 'package:flutter/material.dart';
import 'package:Bengkel/Animation/Home.dart';
import 'package:Bengkel/Animation/ListDetail.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Bengkel Online',
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
    initialRoute: '/',
    routes: {
      '/' : (context) => HomePage(),
      ListBengkel.routeName : (context) => ListBengkel(),
    },
    ));
}




