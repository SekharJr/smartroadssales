import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartroadsales/home/furnpage.dart';

class sechome extends StatefulWidget {
  final String item;

  final double price;

  const sechome({
    Key? key,
    required this.item,
    required this.price,
  }) : super(key: key);

  @override
  State<sechome> createState() => _sechomeState();
}

class _sechomeState extends State<sechome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 32, right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("product: ",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: Colors.teal)),
                Text(widget.item),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "stock: ",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: Colors.teal),
                ),
                Text(widget.price.toString()),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => page1(
                              name: "akhil:  ",
                              bill: 10000,
                            )));
              },
              child: Container(
                height: 40,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.indigo,
                ),
                child: Text("Next",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class page1 extends StatefulWidget {
  final String name;
  final int bill;

  String stud(String name, String sub) {
    return name + sub;
  }

  const page1({Key? key, required this.name, required this.bill})
      : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.name),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(widget.bill.toString())],
            ),
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            page2(name: "Rahul", mobNo: 423423442)));
              },
              child: Container(
                height: 40,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.indigo,
                ),
                child: Text("Next",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class page2 extends StatefulWidget {
  final String name;
  final int mobNo;

  const page2({Key? key, required this.name, required this.mobNo})
      : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Name:",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      color: Colors.teal),
                ),
                Text(
                  widget.name,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "mobNo:",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      color: Colors.teal),
                ),
                Text(
                  widget.mobNo.toString(),
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => page3(
                              id: "adhar",
                              idNo: 354234534646,
                            )));
              },
              child: Container(
                height: 40,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.indigo,
                ),
                child: Text("Next",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class page3 extends StatefulWidget {
  final String id;
  final int idNo;

  const page3({Key? key, required this.id, required this.idNo})
      : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Id:",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.teal),
                ),
                Text(widget.id, style: TextStyle(fontSize: 16))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "IdNo:",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.teal),
                ),
                Text(widget.idNo.toString(), style: TextStyle(fontSize: 16))
              ],
            ),
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page4()));
              },
              child: Container(
                height: 40,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.indigo,
                ),
                child: Text("Next",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 100,
          width: 200,
          child: Stack(
            children: [
              Card(
                color: Colors.yellow,
                child: Container(
                  height: 100,
                  width: 200,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 80,
                  width: 60,
                  color: Colors.orange,

                ),
              ),
              Positioned(
                right: 30,
                left: 40,
                child: Container(
                  height: 60,
                  width: 40,
                  color: Colors.red,
                ),
              )
            ],
          )),
    );
  }
}
