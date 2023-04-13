import 'package:flutter/material.dart';
import 'package:smartroadsales/home/furnpage.dart';

import '../models/furnitures.dart';
import '../models/productmodel.dart';

class homepage extends StatefulWidget {


  const homepage({Key? key,} ): super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

List<Furnitems>furnlist=[
  Furnitems("Table", 200, 15999.99, 5.5,"included"),
  Furnitems("chairs", 150, 1299.99, 1.2,"included"),
  Furnitems("desks", 100, 2999.99, 3.5,"included"),
  Furnitems("bookshelf", 120, 1999.99, 2.5,"included"),
  Furnitems("bed", 170, 13999.99, 5.5,"included")

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Username",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "To Do",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                Text(
                  "5",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),

              ],
            ),


            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 500,
              padding: EdgeInsets.only(left: 8,right: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(top: 24,left: 8,right: 8),
                            child:   Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: Colors.amberAccent,
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.menu_book,
                                      size: 24,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Read every Day",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,letterSpacing: .2),
                                      ),
                                      Text(
                                        "payment",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,letterSpacing: .2),
                                      ),
                                    ],
                                  )


                                ]),
                        );
                      })),
            ),
            Expanded(child: ListView.builder(itemCount: 5,itemBuilder:(context,index){
              return Card(
                color: Colors.deepPurple.shade100,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Container(
                  height: 100,
                  width:300 ,
                  padding: EdgeInsets.all(8),

                  child: Row(
                    children: [

                      Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Product",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                              Text(furnlist[index].name,style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Stock",style: TextStyle(color: Colors.blue),),
                              Text(furnlist[index].stock.toString(),style: TextStyle(color: Colors.green),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("price",style: TextStyle(color: Colors.blue),),
                              Text(furnlist[index].price.toString(),style: TextStyle(color: Colors.red),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("offer ",style: TextStyle(color: Colors.blue),),
                              Text(furnlist[index].offer.toString(),style: TextStyle(color: Colors.green),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Warranty",style: TextStyle(color: Colors.blue),),
                              Text(furnlist[index].warranty,style: TextStyle(color: Colors.green),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ),
              );

            })),

          ],
        ),
      ),
    );
  }
}
