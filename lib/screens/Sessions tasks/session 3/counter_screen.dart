import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  static const String routeName = 'counter_Screen';

  CounterScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return CounterScreenState();
  }
}

class CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black54,
        title: Text(
          'Counter Screen',
          style: TextStyle(fontWeight: FontWeight(700), color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            FloatingActionButton(
              onPressed: () {
                // Todo counter
                setState(() {
                counter++;

                });
              },
              child: Icon(Icons.add, size: 25, color: Colors.teal),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * Scaffold(
    appBar: AppBar(
    centerTitle: true,
    backgroundColor: Colors.black54,
    title: Text(
    'Counter Screen',
    style: TextStyle(
    fontWeight: FontWeight(700),
    color: Colors.white
    ),
    ),
    ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('$counter',
    style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold
    ),
    ),
    FloatingActionButton(
    onPressed:(){
    // Todo counter
    counter++;
    print(counter);
    },
    child: Icon(Icons.add,
    size: 25,color: Colors.teal,
    ),
    )
    ],
    ),
    ),
    );*/
