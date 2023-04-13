import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgot extends StatefulWidget {
  const forgot({Key? key}) : super(key: key);

  @override
  State<forgot> createState() => _forgotState();
}

class _forgotState extends State<forgot> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Don't worry,we got you.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Enter the email address associated",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "with your account.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              textAlign: TextAlign.start,
              controller: email,
              decoration: InputDecoration(
                  hintText: "Enter you email",
                  helperText: "Email",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(color: Colors.teal.shade200, width: 1))),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ftpassword()));
              },
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.teal.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Send Reset Instructions",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ftpassword extends StatefulWidget {
  const ftpassword({Key? key}) : super(key: key);

  @override
  State<ftpassword> createState() => _ftpasswordState();
}

class _ftpasswordState extends State<ftpassword> {
  TextEditingController newpassword = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Create new password",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Your new password must be different ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "from previous used passwords.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              textAlign: TextAlign.start,
              controller: newpassword,
              decoration: InputDecoration(
                helperText: "New Password",
                  hintText: "New Password",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(color: Colors.teal.shade200, width: 1))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
                textAlign: TextAlign.start,
                controller: confirmpassword,
                decoration: InputDecoration(
                  helperText: "Confirm Password",
                    hintText: "Confirm new password",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.teal.shade200, width: 1)))),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              child: Container(
                height: 60,
                width: 400,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.teal.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Reset Password",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
