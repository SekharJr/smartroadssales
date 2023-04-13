import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartroadsales/authentication/loginpage.dart';
import 'package:smartroadsales/home/smarthome.dart';

import '../authentication/newloginpage.dart';

class splashscreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<splashscreen>{
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => login()));
        });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }}
