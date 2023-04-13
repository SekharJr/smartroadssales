import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class apicalling extends StatefulWidget {
  

  const apicalling({Key? key}) : super(key: key);

  @override
  State<apicalling> createState() => _apicallingState();
}

class _apicallingState extends State<apicalling> {

Future< myfirstapiresponsemodel>api()async{
  myfirstapiresponsemodel?  obj;
  var response=await http.get(Uri.parse("https://mocki.io/v1/a7f05494-86fb-45c0-996c-98cb15d09684"));

  if (response.statusCode==200){
    var data=convert.jsonDecode(response.body);
    obj=myfirstapiresponsemodel.fromJson(data);
  }else{
    print("error");
  }

  return obj!;
  

}

 myfirstapiresponsemodel? ocean;
String? k;
void getdata()async{
  ocean=await api();
setState(() {
  k=ocean!.ocaenday;
});

}


@override
  void initState() {
    // TODO: implement initState
  getdata();

    super.initState();

  }


@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(k!)


          ],
        ),
      ),
    );
  }
}




class myfirstapiresponsemodel {
  String? ocaenday;

  myfirstapiresponsemodel({this.ocaenday});

  myfirstapiresponsemodel.fromJson(Map<String, dynamic> json) {
    ocaenday = json['ocaenday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ocaenday'] = this.ocaenday;
    return data;
  }
}