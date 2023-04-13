import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartroadsales/Utilities/constants.dart';
import 'package:smartroadsales/authentication/loginpage.dart';
import 'package:smartroadsales/home/smarthome.dart';

import '../authentication/newloginpage.dart';

class splashscreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<splashscreen>{

  void readlogindata()async{
    final SharedPreferences skiplogin=await SharedPreferences.getInstance();
    bool? islogin=skiplogin.getBool(Constants.islogin);

    if(islogin==null){

      Navigator.push(context, MaterialPageRoute(builder: (context)=>newlogin()));
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>smarthome()));
    }
  }

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () {
       readlogindata();
        });
  }


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       color: Colors.teal.shade200,
     ),
   );
  }}
