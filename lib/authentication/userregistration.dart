import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  TextEditingController username=TextEditingController();
  TextEditingController Email=TextEditingController();
  TextEditingController MobileNumber=TextEditingController();
  TextEditingController Password=TextEditingController();
  TextEditingController ConfirmPassword=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("Register",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
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
              controller: username,
              decoration: InputDecoration(
                hintText: "Email",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: username,
              decoration: InputDecoration(
                hintText: "MobileNumber",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: username,
              decoration: InputDecoration(
                hintText: "Password",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: username,
              decoration: InputDecoration(
                hintText: "ConfirmPassword",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
