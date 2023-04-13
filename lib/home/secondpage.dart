import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondpage extends StatefulWidget {

  final int rollnumber;
  final String name;
  final double point;
  


  const secondpage({Key? key, required this.rollnumber, required this.name, required this.point}) : super(key: key);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(widget.name,),
            Text(widget.rollnumber.toString()),
            Text(widget.point.toString())
          ],
        ),
      ),
    );
  }
}
