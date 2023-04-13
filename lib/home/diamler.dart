import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class secondapi extends StatefulWidget {
  const secondapi({Key? key}) : super(key: key);

  @override
  State<secondapi> createState() => _secondapiState();
}

class _secondapiState extends State<secondapi> {
  Future<diamler> nextapi() async {
    diamler? news;

    var response = await http.get(
        Uri.parse("https://mocki.io/v1/a77a69dd-9a6a-4423-88a5-b08f69446bec"));

    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);
      news = diamler.fromJson(data);
    } else {
      print("error");
    }

    return news!;
  }

  diamler? truck;
  String? d;
  void getdata() async {
    truck = await nextapi();

    setState(() {
      d = truck!.diameler;
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
          children: [Text(d!)],
        ),
      ),
    );
  }
}

class diamler {
  String? diameler;

  diamler({this.diameler});

  diamler.fromJson(Map<String, dynamic> json) {
    diameler = json['diameler'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['diameler'] = this.diameler;
    return data;
  }
}













class comp extends StatefulWidget {
  const comp({Key? key}) : super(key: key);

  @override
  State<comp> createState() => _compState();
}

class _compState extends State<comp> {
  
  Future<sedg>just()async{
    sedg? jeps;
    var respons=await http.get(Uri.parse("https://mocki.io/v1/254bdc6d-663c-4abd-a5f0-ca096032fe70"));


    if(respons.statusCode==200){
      var data=convert.jsonDecode(respons.body);
      jeps=sedg.fromJson(data);
    }else{
      print("error");
    }
    return jeps!;

  }




  sedg? deps;
  Data? data;

  void getdata()async{
    deps=await just();

    setState(() {

      data=deps!.data;

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
        height: 200,
        width: 200,
        color: Colors.yellow,

        margin: EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(data!.defaultLiter.toString()),
            Text(data!.isAddressApproved.toString()),
            Text(data!.area.toString()),
            Text(data!.email.toString()),
            Text(data!.totalOrder.toString()),
            Text(data!.phoneNumber.toString()),
            Text(data!.isPauseDelivery.toString()),
            Text(data!.sId.toString()),
            Text(data!.streetAddress.toString()),
            Text(data!.unitNumber.toString()),
            Text(data!.vacationStartDt.toString()),
            Text(data!.vacationEndDt.toString()),
            Text(data!.zipCode.toString()),

          ],
        ),
      ),
    );
  }
}

class sedg {
  Data? data;
  String? message;
  bool? error;

  sedg({this.data, this.message, this.error});

  sedg.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['error'] = this.error;
    return data;
  }
}

class Data {
  String? sId;
  String? email;
  String? phoneNumber;
  int? isAddressApproved;
  String? unitNumber;
  String? streetAddress;
  String? area;
  String? zipCode;
  int? totalOrder;
  int? todayOrder;
  bool? isPauseDelivery;
  Null? vacationStartDt;
  Null? vacationEndDt;
  int? defaultLiter;

  Data(
      {this.sId,
      this.email,
      this.phoneNumber,
      this.isAddressApproved,
      this.unitNumber,
      this.streetAddress,
      this.area,
      this.zipCode,
      this.totalOrder,
      this.todayOrder,
      this.isPauseDelivery,
      this.vacationStartDt,
      this.vacationEndDt,
      this.defaultLiter});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    isAddressApproved = json['isAddressApproved'];
    unitNumber = json['unitNumber'];
    streetAddress = json['streetAddress'];
    area = json['area'];
    zipCode = json['zipCode'];
    totalOrder = json['totalOrder'];
    todayOrder = json['todayOrder'];
    isPauseDelivery = json['isPauseDelivery'];
    vacationStartDt = json['vacationStartDt'];
    vacationEndDt = json['vacationEndDt'];
    defaultLiter = json['defaultLiter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    data['isAddressApproved'] = this.isAddressApproved;
    data['unitNumber'] = this.unitNumber;
    data['streetAddress'] = this.streetAddress;
    data['area'] = this.area;
    data['zipCode'] = this.zipCode;
    data['totalOrder'] = this.totalOrder;
    data['todayOrder'] = this.todayOrder;
    data['isPauseDelivery'] = this.isPauseDelivery;
    data['vacationStartDt'] = this.vacationStartDt;
    data['vacationEndDt'] = this.vacationEndDt;
    data['defaultLiter'] = this.defaultLiter;
    return data;
  }
}


class page5 extends StatefulWidget {
  const page5({Key? key}) : super(key: key);

  @override
  State<page5> createState() => _page5State();
}

class _page5State extends State<page5> {

  Future<resu>third()async{
    resu? dets;
    var response=await http.get(Uri.parse("https://mocki.io/v1/ada499b0-5b05-4b0c-9557-278ce37f41a2"));
    if(response.statusCode==200){
      var data=convert.jsonDecode(response.body);
      dets=resu.fromJson(data);
    }else{
      print("error");
    }
    return dets!;

  }

resu? employe;
  String? j;
  int? k;

  void getdata()async{

    employe=await third();
    setState(() {
      j=employe?.name;
      k=employe?.age;

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width:200,
            color: Colors.yellow,
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Row(
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Text(j!),
                        Text(k!.toString()),
                      

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class resu {
  String? name;
  int? age;
  List<String>? skills;
  bool? iseligible;
  Experience? experience;

  resu({this.name, this.age, this.skills, this.iseligible, this.experience});

  resu.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    skills = json['skills'].cast<String>();
    iseligible = json['iseligible'];
    experience = json['experience'] != null
        ? new Experience.fromJson(json['experience'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['skills'] = this.skills;
    data['iseligible'] = this.iseligible;
    if (this.experience != null) {
      data['experience'] = this.experience!.toJson();
    }
    return data;
  }
}

class Experience {
  String? google;
  String? amazon;

  Experience({this.google, this.amazon});

  Experience.fromJson(Map<String, dynamic> json) {
    google = json['Google'];
    amazon = json['Amazon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Google'] = this.google;
    data['Amazon'] = this.amazon;
    return data;
  }
}

