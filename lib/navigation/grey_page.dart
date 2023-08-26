import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation/navigation_main.dart';

class GreyPage extends StatelessWidget {
  const GreyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Grey Page",
        ),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "This page is grey page",
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: const Text("Go to main page"),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue),
          )
        ],
      )),
    );
  }
}
