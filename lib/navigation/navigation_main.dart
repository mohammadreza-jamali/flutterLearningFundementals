import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation/green_page.dart';
import 'package:flutter_application_1/navigation/not_found_page.dart';
import 'package:flutter_application_1/navigation/red_page.dart';
import 'package:flutter_application_1/navigation/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      //home: HomePage(),
      onGenerateRoute: RouteManager.generate,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RedPage())).then((value) => print(" value is $value"));
              // Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>RedPage()));
              // Navigator.of(context).pushNamed("/redPage");
              Navigator.of(context).pushNamed("/RedPage");
            }, child:const Text("Go to red page"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade300),),
            ElevatedButton(onPressed: (){
              Navigator.of(context).maybePop();
            }, child:const Text("Go back if exist"),),
            ElevatedButton(onPressed: (){
              print("Can I go back ?${Navigator.of(context).canPop()}");
            }, child:const Text("Can go back"),),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>RedPage()));
              },
              child: const Text("Replace to red page"),
            ),
          ],
        ),
      ),
    );
  }
}