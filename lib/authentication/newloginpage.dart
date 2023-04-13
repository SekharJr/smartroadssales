import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartroadsales/Utilities/constants.dart';

import '../home/newhomepage.dart';
import '../home/smarthome.dart';
import 'ftpassword.dart';
import 'package:page_transition/page_transition.dart';

class newlogin extends StatefulWidget {
  const newlogin({Key? key}) : super(key: key);

  @override
  State<newlogin> createState() => _newloginState();
}

class _newloginState extends State<newlogin> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(

        padding: EdgeInsets.only(top: 100, left: 20, right: 20),
        color: Colors.white,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello Again!",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome back you've been missed!",
                  maxLines: 2,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
                textAlign: TextAlign.start,
                controller: username,
                decoration: InputDecoration(
                    hintText: "Enter username",
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal.shade200,width: 1),borderRadius: BorderRadius.circular(20)
                  )
                )
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              textAlign: TextAlign.start,
              controller: password,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  hintText: "Password",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade200,width: 1),borderRadius: BorderRadius.circular(20)
                  ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red.shade800),borderRadius: BorderRadius.circular(20)
                )


                       ),
            ),
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> forgot()));
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Recovery Password",
                      style: TextStyle(
                          letterSpacing: .2,
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal.shade300,
                ),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              onTap: ()async{
                final SharedPreferences obj= await SharedPreferences.getInstance();
                obj.setBool(Constants.islogin, true);
                Navigator.push(context, PageTransition(child: smarthome(), type: PageTransitionType.topToBottom));
              },
             
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 20,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "  Or with  google ",
                    style: TextStyle(color: Colors.black),
                  ),
                  Expanded(
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                height: 60,
                width: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(boxShadow:[BoxShadow(
                    color: Colors.black,
                    offset: (Offset(1.0,4.5)),blurRadius: 10,spreadRadius: 2
                )],
                    color: Colors.grey.shade100,
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.facebook,
                  color: Colors.blue,
                  size: 40,
                ),
              ),
              Container(
                height: 70,
                width: 80,
                alignment: Alignment.center,

                decoration: BoxDecoration(boxShadow:[BoxShadow(
                  color: Colors.black,
                  offset: (Offset(1.0,4.5)),blurRadius: 10,spreadRadius: 2
                )],
                    color: Colors.grey.shade100,
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.apple,
                  color: Colors.black,
                  size: 50,
                ),
              ),
              Container(
                height: 60,
                width: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(boxShadow:[BoxShadow(
                    color: Colors.black,
                    offset: (Offset(1.0,4.5)),blurRadius: 10,spreadRadius: 2
                )],
                    color: Colors.grey.shade100,
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.email_outlined,
                  color: Colors.red.shade900,
                  size: 40,
                ),
              ),
            ]),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  " Register now",
                  style: TextStyle(color: Colors.teal),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


class anicontainer extends StatefulWidget {
  const anicontainer({Key? key}) : super(key: key);

  @override
  State<anicontainer> createState() => _anicontainerState();
}

class _anicontainerState extends State<anicontainer> {
  double loginWidth = 40.0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           GestureDetector (
              child: Text('Animate!'),
              onTap: () {
                setState(() {
                  loginWidth = 250.0;
                });
              },
            ),
            SizedBox(
              height: 50,
            ),

            AnimatedContainer (
              duration: Duration (seconds: 5),
              width: loginWidth,
              height: 40,
              color: Colors.red,
            )
          ],
        ),
      )

  );
  }
}
