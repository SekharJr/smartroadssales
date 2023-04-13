import 'package:flutter/cupertino.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class homedes extends StatefulWidget {
  const homedes({Key? key}) : super(key: key);

  @override
  State<homedes> createState() => _homedesState();
}

class _homedesState extends State<homedes> {
  Future<task> fourth() async {
    task? result;

    var response = await http.get(Uri.parse(
        "https://run.mocky.io/v3/34772870-71d7-4f89-88c9-fe0ae1e299e3"));
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);
      result = task.fromJson(data);
    } else {
      print("error");
    }
    return result!;
  }

  task? out;
  Data? data;

  void getdata() async {
    out = await fourth();
    setState(() {
      data = out!.data;
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
          width: double.infinity,
          color: Colors.grey.shade400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.only(top: 50),
                color: Colors.teal.shade300,
                shadowColor: Colors.black,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Name:  ",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(data!.profile!.name!,
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black)),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            "Age:  ",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            data!.profile!.age!.toString(),
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            "Job:  ",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            data!.profile!.job!.toString(),
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: data!.list!.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Card(
                            elevation: 10,
                            color: Colors.greenAccent.shade100,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                                height: 100,
                                width: 300,
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      ("assets/images/shopping-PNG.png"),
                                      height: 100,
                                      width: 150,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Product:"),
                                            Text(
                                              data!.list![index].pprouctName!,
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text("Amount:"),
                                            Text(
                                              data!.list![index].amount!
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text("Discount:"),
                                        Text(
                                          data!.list![index].discount!
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                        );
                      })),
            ],
          )),
    );
  }
}

class task {
  String? status;
  Data? data;
  String? message;

  task({this.status, this.data, this.message});

  task.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  Profile? profile;
  List<Mylist>? list;

  Data({this.profile, this.list});

  Data.fromJson(Map<String, dynamic> json) {
    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
    if (json['List'] != null) {
      list = <Mylist>[];
      json['List'].forEach((v) {
        list!.add(new Mylist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.profile != null) {
      data['profile'] = this.profile!.toJson();
    }
    if (this.list != null) {
      data['List'] = this.list!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Profile {
  String? name;
  int? age;
  String? job;

  Profile({this.name, this.age, this.job});

  Profile.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    job = json['job'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['job'] = this.job;
    return data;
  }
}

class Mylist {
  int? amount;
  String? pprouctName;
  int? discount;

  Mylist({this.amount, this.pprouctName, this.discount});

  Mylist.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    pprouctName = json['pprouctName'];
    discount = json['discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount'] = this.amount;
    data['pprouctName'] = this.pprouctName;
    data['discount'] = this.discount;
    return data;
  }
}





class topicfl extends StatefulWidget {
  const topicfl({Key? key}) : super(key: key);

  @override
  State<topicfl> createState() => _topicflState();
}

class _topicflState extends State<topicfl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        width: 300,
                        color: Colors.yellow,
                      )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        width: 300,
                        color: Colors.green,
                      )),
                  Expanded(
                      flex: 7,
                      child: Container(
                        height: 100,
                        width: 300,
                        color: Colors.black,
                      )),
                ],
              ),
              Flexible(
                  child: Container(
                height: 100,
                width: 200,
                color: Colors.red,
              )),
              Expanded(
                child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.yellow,
                ),
              ),
              Container(
                height: 20,
                width: 200,
                color: Colors.black,
              )
            ],
          )),
    );
  }
}

class phonepe extends StatefulWidget {
  const phonepe({Key? key}) : super(key: key);

  @override
  State<phonepe> createState() => _phonepeState();
}

class _phonepeState extends State<phonepe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple, actions: [
        IconButton(
            onPressed: () {
              print("hello");
            },
            icon: Icon(Icons.qr_code_2_outlined)),
        IconButton(
            onPressed: () {
              print("ok");
            },
            icon: Icon(Icons.notification_add_outlined)),
        IconButton(
            onPressed: () {
              print("hai");
            },
            icon: Icon(Icons.question_mark_outlined))
      ]),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                accountName: Text(
                  "Amal Sekhar",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("amalsekhar1@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), //Drawer
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            label: "Home",
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            label: "Stores",
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.safety_check_outlined,
                color: Colors.white,
              ),
              label: "Insurance",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.currency_rupee_outlined,
              color: Colors.white,
            ),
            label: "Wealth",
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.compare_arrows_outlined,
                color: Colors.white,
              ),
              label: "History",
              backgroundColor: Colors.deepPurple),
        ],
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        color: Colors.grey.shade400,
        padding: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 130,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple,
                        )),
                    Container(
                        height: 130,
                        width: 400,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple,
                        )),
                    Container(
                        height: 130,
                        width: 400,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple,
                        )),
                    Container(
                        height: 130,
                        width: 400,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple,
                        )),
                    Container(
                        height: 130,
                        width: 400,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    height: 150,
                    width: 400,
                    padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Transfer Money",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.person_outline_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.deepPurple,
                                  ),
                                ),
                                Text(
                                  "To Mobile",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.account_balance_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.deepPurple,
                                  ),
                                ),
                                Text(
                                  "To Bank Account",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.arrow_downward_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.deepPurple,
                                  ),
                                ),
                                Text(
                                  "To Self",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.account_balance_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.deepPurple,
                                  ),
                                ),
                                Text(
                                  "Bank Balance",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 80,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightBlueAccent.shade100,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text(
                          "Phonepe Wallet",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightBlueAccent.shade100,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.card_giftcard_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text(
                          "Rewards",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightBlueAccent.shade100,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.record_voice_over,
                            color: Colors.white, size: 40),
                        Text(
                          "Refer&Get100",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 400,
                padding: EdgeInsets.only(left: 15, top: 10, right: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recharge&Pay Bills",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                            height: 20,
                            width: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey),
                            child: Text("My Bills"))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.install_mobile_rounded,
                                color: Colors.deepPurple,
                                size: 40,
                              ),
                            ),
                            Text("Mobile Recharge")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.cast_connected_rounded,
                                color: Colors.deepPurple,
                                size: 40,
                              ),
                            ),
                            Text("DTH")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.electric_bolt_rounded,
                                color: Colors.deepPurple,
                                size: 40,
                              ),
                            ),
                            Text("Electricty")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.credit_card_rounded,
                                color: Colors.deepPurple,
                                size: 40,
                              ),
                            ),
                            Text("Credit Card")
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.home_outlined,
                                color: Colors.deepPurple,
                                size: 40,
                              ),
                            ),
                            Text("House Rent")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.handshake_outlined,
                                color: Colors.deepPurple,
                                size: 40,
                              ),
                            ),
                            Text("Loan payment")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Icons.cast_for_education_rounded,
                                color: Colors.deepPurple,
                                size: 40,
                              ),
                            ),
                            Text("Education")
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(Icons.arrow_forward_ios_rounded,
                                  color: Colors.deepPurple, size: 40),
                            ),
                            Text("See all")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 100,
                  width: 400,
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Sponsord Links",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  width: 400,
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Insurance",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        height: 200,
                        width: 400,
                        padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        height: 200,
                        width: 400,
                        padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        height: 200,
                        width: 400,
                        padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 100,
                  width: 400,
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Travel Bookings",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 100,
                  width: 400,
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Switch",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 100,
                  width: 400,
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Subscriptions",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 100,
                  width: 400,
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Brand Vouchers",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
