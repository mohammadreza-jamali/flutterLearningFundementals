import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Route Error",
        ),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "404",
            style: TextStyle(fontSize: 30),
          ),
          const Text(
            "Page Not Found",
            style: TextStyle(fontSize: 24),
          )
        ],
      )),
    );
  }
}
