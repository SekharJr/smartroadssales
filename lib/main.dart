import 'package:flutter/material.dart';
import 'package:smartroadsales/home/homepage.dart';
import 'package:smartroadsales/home/sechome.dart';
import 'package:smartroadsales/home/secondpage.dart';
import 'package:smartroadsales/home/splashscreen.dart';

import 'authentication/ftpassword.dart';
import 'authentication/loginpage.dart';
import 'authentication/newloginpage.dart';
import 'home/apicalling.dart';
import 'home/apiref.dart';
import 'home/bottombar.dart';
import 'home/diamler.dart';
import 'home/homedes.dart';
import 'home/newhomepage.dart';
import 'home/smarthome.dart';
import 'models/practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: smarthome()

    );
  }
}
