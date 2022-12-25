import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
 int _counter = 0;

  @override
  Widget build(BuildContext context) {
    print("MyHomePage build method called");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _increase();
          print(
              "floating action button clicked and counter value is $_counter");
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyCounterIcon(),
            Text(
              "Counter Value Is :",
              style: TextStyle(fontSize: 24),
            ),
            Text(_counter.toString(),
                style: Theme.of(context).textTheme.headline1)
          ],
        )),
      ),
    );
  }

  void _increase() {
    setState(() {
      _counter++;
    });
  }
}

class MyCounterIcon extends StatefulWidget {
  const MyCounterIcon({super.key});

  @override
  State<MyCounterIcon> createState() => _MyCounterIconState();
}

class _MyCounterIconState extends State<MyCounterIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Icon(Icons.add_box_outlined),
    );
  }
}
