import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation/green_page.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title:const Text("Red Page",),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("This page is red page",style: TextStyle(fontSize: 24),),
              ElevatedButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => GreenPage(10)));
                Navigator.of(context)
                    .pushNamed("/GreenPage",arguments: 25);
              },
              child: const Text("Go to green page"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.green.shade300),
            ),
              ElevatedButton(
              onPressed: () {
                var value=Random().nextInt(100);
                Navigator.of(context).pop(value);
              },
              child: const Text("Go back to main"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
              ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: const Text("Go back if exist"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
            ElevatedButton(
              onPressed: () {
                print("Can I go back ?${Navigator.of(context).canPop()}");
              },
              child: const Text("Can go back"),
            ),
            ],
          )),
      ),
    );
  }
}