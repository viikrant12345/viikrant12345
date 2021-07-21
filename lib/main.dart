import 'package:consulmedicalstore/LoginScreen.dart';
import 'package:consulmedicalstore/Sinup.dart';
import 'package:consulmedicalstore/SplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}
class Sample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(

      padding: EdgeInsets.all(10),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [

                ],
                gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.red]
                )



        ),

      ),
    );
  }

}