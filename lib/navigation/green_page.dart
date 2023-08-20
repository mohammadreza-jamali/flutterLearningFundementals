import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation/yellow_page.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Green Page",
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "This page is green page",
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => YellowPage()));
            },
            child: const Text("Go to yellow page"),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow.shade800),
          )
        ],
      )),
    );
  }
}
