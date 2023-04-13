import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartroadsales/models/furnitures.dart';

class furniture extends StatefulWidget {
  const furniture({Key? key}) : super(key: key);

  @override
  State<furniture> createState() => _furnitureState();
}

class _furnitureState extends State<furniture> {
  List<Furnitems> furnlist = [
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
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: furnlist.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('product:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(furnlist[index].name,style: TextStyle(fontSize: 20),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('stock:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(furnlist[index].stock.toString(),style: TextStyle(fontSize: 20),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('price:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(furnlist[index].price.toString(),style: TextStyle(fontSize: 20),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('offer:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(furnlist[index].offer.toString(),style: TextStyle(fontSize: 20),),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
