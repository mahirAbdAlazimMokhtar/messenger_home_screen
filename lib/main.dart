// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'messenger_screen.dart';


void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MessengerScreen(),
      ),
    );
  }
}
