import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartroadsales/authentication/userregistration.dart';
import 'package:smartroadsales/home/homepage.dart';

import '../Utilities/constants.dart';
import '../Utilities/sharedpreference.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.blue,
                  size: 24,
                ),
                Text(
                  "Smart",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Text(
                  "Road",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sales",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: username,
              decoration: InputDecoration(
                hintText: "Username",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              child: Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homepage()));
              },
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Forgot Password",
                  style: TextStyle(
                      letterSpacing: .2,
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  child: Text(
                    "Register",
                    style: TextStyle(
                        letterSpacing: .2,
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => registration()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class login2 extends StatefulWidget {
  const login2({Key? key}) : super(key: key);

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20),

        color: Colors.grey.shade300,
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
                  fillColor: Colors.white60,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              textAlign: TextAlign.start,
              controller: password,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white60,
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
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
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
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
              onTap: () {

               sharedpref obj=sharedpref();
               obj.saveString(Constants.password,password.text+"");
               Future.delayed(Duration(seconds: 5),()async{
                 String? k=await obj.getString(Constants.password);
                 print(k);


               });
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
                  Text("  Or continue with  ",style: TextStyle(color: Colors.black),),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 70,

                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.grey.shade100,border: Border.all(color: Colors.white,width:2),borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 30,

                  ),
                  ),
                Container(
                  height: 70,
                  width: 80,

                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.grey.shade100,border: Border.all(color: Colors.white,width:2),borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.apple,
                    color: Colors.blue,
                    size: 50,

                  ),
                ),
                Container(
                  height: 60,
                  width: 70,

                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.grey.shade100,border: Border.all(color: Colors.white,width:2),borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.email_rounded,
                    color: Colors.blue,
                    size: 30,

                  ),
                ),
                  ]
                ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?",style: TextStyle(fontSize: 16),),
                Text(" Register now",style: TextStyle(color: Colors.blue),)
              ],
            )



          ],
        ),
      ),
    );
  }
}
