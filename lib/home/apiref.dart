import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class revise extends StatefulWidget {
  const revise({Key? key}) : super(key: key);

  @override
  State<revise> createState() => _reviseState();
}

class _reviseState extends State<revise> {

  Future< bill>next()async{
    bill? total;
    var response=await http.get(Uri.parse("https://mocki.io/v1/672da2fa-8d9a-4350-84be-c2c6e83d518f"));
    if(response.statusCode==200){
      var data=convert.jsonDecode(response.body);
      total=bill.fromJson(data);
    }else {
      print("error");
    }
    return total!;
  }
  bill? store;



  void getdata()async{
    store=await next();
    setState(() {

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
            Text(store!.shipTo!.address!)
          ],
        ),
      ),
    );
  }
}


class bill {
  String? name;
  String? sku;
  double? price;
  ShipTo? shipTo;
  ShipTo? billTo;

  bill({this.name, this.sku, this.price, this.shipTo, this.billTo});

  bill.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    sku = json['sku'];
    price = json['price'];
    shipTo =
    json['shipTo'] != null ? new ShipTo.fromJson(json['shipTo']) : null;
    billTo =
    json['billTo'] != null ? new ShipTo.fromJson(json['billTo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['sku'] = this.sku;
    data['price'] = this.price;
    if (this.shipTo != null) {
      data['shipTo'] = this.shipTo!.toJson();
    }
    if (this.billTo != null) {
      data['billTo'] = this.billTo!.toJson();
    }
    return data;
  }
}

class ShipTo {
  String? name;
  String? address;
  String? city;
  String? state;
  String? zip;

  ShipTo({this.name, this.address, this.city, this.state, this.zip});

  ShipTo.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    zip = json['zip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    data['zip'] = this.zip;
    return data;
  }
}