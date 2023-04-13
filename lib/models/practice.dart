import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(basicpage());
}
//stless
class basicpage extends StatelessWidget {
  const basicpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firstpage(firstvalue: 1,value: "amal",),
    );
  }
}

//stfull name
class firstpage extends StatefulWidget {

  final int firstvalue;
  final String value;


  const firstpage({Key? key, required this.firstvalue, required this.value}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("User name :"),Text(widget.value)],),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("No :"),Text(widget.firstvalue.toString())],),


              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>secondPage(name: "name",no: 1,)));
                },
                child: Container(
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Text("Click",style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
        )
    );
  }
}
class secondPage extends StatefulWidget {
  final int no;
  final String name;
  const secondPage({Key? key, required this.no, required this.name}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(widget.no.toString()),
            Text(widget.name.toString())
          ],
        ),
      ),
    );
  }
}