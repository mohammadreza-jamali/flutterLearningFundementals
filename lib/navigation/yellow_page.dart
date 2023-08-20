import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation/grey_page.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Yellow Page",
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This page is yellow page",style: TextStyle(fontSize: 24),),
            ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> GreyPage()));
            },
            child: const Text("Go to grey page"),
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade700),
          )
          ],
        )),
    );
  }
}
