import 'package:flutter/material.dart';

class newhome extends StatefulWidget {
  const newhome({Key? key}) : super(key: key);

  @override
  State<newhome> createState() => _newhomeState();
}

class _newhomeState extends State<newhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('First', style: TextStyle(fontSize: 20)),
                color: Colors.yellow,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Second', style: TextStyle(fontSize: 20)),
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Third', style: TextStyle(fontSize: 20)),
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Four', style: TextStyle(fontSize: 20)),
                color: Colors.yellow,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Fifth', style: TextStyle(fontSize: 20)),
                color: Colors.yellow,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Six', style: TextStyle(fontSize: 20)),
                color: Colors.blue,
              ),
            ],
          )),
    );
  }
}
