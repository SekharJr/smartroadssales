import 'package:flutter/material.dart';

class smarthome extends StatefulWidget {
  const smarthome({Key? key}) : super(key: key);

  @override
  State<smarthome> createState() => _smarthomeState();
}

class _smarthomeState extends State<smarthome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.teal.shade200,
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            ListTile(
              leading: Icon(Icons.table_rows_outlined,color: Colors.black,),
              title: Text("Sign in/Sign Up",style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              leading: Icon(Icons.change_circle_outlined,color: Colors.black),
              title: Text("Change Password",style: TextStyle(color: Colors.black),)
            ),
            ListTile(
              leading: Icon(Icons.language,color: Colors.black),
              title: Text("Language",style: TextStyle(color: Colors.black),)
            ),
            ListTile(
              leading: Icon(Icons.contact_page_outlined,color: Colors.black),
              title: Text("Contact Us",style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              leading: Icon(Icons.flag_outlined,color: Colors.black),
              title: Text("Frequently Asked Questions",style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              leading: Icon(Icons.help_outline,color: Colors.black),
              title: Text("Help",style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              leading: Icon(Icons.safety_check_outlined,color: Colors.black),
              title: Text("Privacy Policy ",style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined,color: Colors.black),
              title: Text("Terms&Conditions",style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              leading: Icon(Icons.help_center_outlined,color: Colors.black),
              title: Text("About",style: TextStyle(color: Colors.black),),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Expanded(
              child: GridView.extent(
                maxCrossAxisExtent: 200.0,
                children: [
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 80,
                      width: 400,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://www.freepnglogos.com/uploads/women-bag-png/women-bag-png-transparent-images-download-clip-6.png",
                            height: 150,
                            width: 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Leather Bag",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "2999.99",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("4.5"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                              ])
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 80,
                      width: 400,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://www.pngall.com/wp-content/uploads/2/Bag-PNG-Image-File.png",
                            height: 150,
                            width: 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Travel Bag",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "2499.99",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("4.3"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                              ])
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 80,
                      width: 400,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://www.freepnglogos.com/uploads/women-bag-png/women-bag-png-transparent-images-download-clip-6.png",
                            height: 150,
                            width: 150,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 80,
                      width: 400,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://www.pngall.com/wp-content/uploads/2/Bag-PNG-Image-File.png",
                            height: 150,
                            width: 150,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 80,
                      width: 400,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://www.pngall.com/wp-content/uploads/2/Bag-PNG-Image-File.png",
                            height: 150,
                            width: 150,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 80,
                      width: 400,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://www.pngall.com/wp-content/uploads/2/Bag-PNG-Image-File.png",
                            height: 150,
                            width: 150,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 80,
                      width: 400,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://www.pngall.com/wp-content/uploads/2/Bag-PNG-Image-File.png",
                            height: 150,
                            width: 150,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 80,
                      width: 400,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://www.pngall.com/wp-content/uploads/2/Bag-PNG-Image-File.png",
                            height: 150,
                            width: 150,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 80,
                      width: 400,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://www.pngall.com/wp-content/uploads/2/Bag-PNG-Image-File.png",
                            height: 150,
                            width: 150,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 80,
                      width: 400,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://www.pngall.com/wp-content/uploads/2/Bag-PNG-Image-File.png",
                            height: 150,
                            width: 150,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 80,
                      width: 400,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://www.pngall.com/wp-content/uploads/2/Bag-PNG-Image-File.png",
                            height: 150,
                            width: 150,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
