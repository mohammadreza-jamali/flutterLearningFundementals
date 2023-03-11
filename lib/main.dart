import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_buttons.dart';
import 'package:flutter_application_1/card_tile.dart';
import 'package:flutter_application_1/dropdown_usage.dart';
import 'package:flutter_application_1/image.dart';
import 'package:flutter_application_1/list_usage.dart';
import 'package:flutter_application_1/mycounter.dart';
import 'package:flutter_application_1/popup_menu_usage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'gridview_usage.dart';

void main() {
  //print("Main method called");
  runApp(MyWidget());
  configLoading();
}
void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("MyWidget build method called");
    return MaterialApp(
      title: "MyCounter",
        theme: ThemeData(
          primarySwatch: Colors.blue,
            textTheme: TextTheme(headline1: TextStyle(color:Colors.red,fontWeight: FontWeight.bold)),
          textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(
            
          ))
          ),
        home: GridViewUsage(),
        builder: EasyLoading.init(),
    );
  }

/*
  Widget containerWithProblem() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.purple,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }

  Widget containerWithExpanded() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
          ),
          // Expanded(
          //   flex: 3,
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     color: Colors.blue,
          //   ),
          // ),
          // Expanded(
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     color: Colors.red,
          //   ),
          // ),
          // Expanded(
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     color: Colors.green,
          //   ),
          // ),
          // Expanded(
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     color: Colors.amber,
          //   ),
          // ),
          // Expanded(
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     color: Colors.purple,
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget containerWithFlexible() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          ),
          Flexible(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
          ),
          Flexible(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
          Flexible(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
          Flexible(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  Widget rowImplementation() {
    return Container(
      color: Colors.red.shade300,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.person_pin_circle,
            color: Colors.green,
            size: 64,
          ),
          Icon(
            Icons.person_pin_circle,
            color: Colors.orange,
            size: 64,
          ),
          Icon(
            Icons.person_pin_circle,
            color: Colors.purple,
            size: 64,
          ),
          Icon(
            Icons.person_pin_circle,
            color: Colors.blue,
            size: 64,
          ),
        ],
      ),
    );
  }

  Widget columnImplementation() {
    return Container(
      color: Colors.red.shade300,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.person_pin_circle,
            color: Colors.green,
            size: 64,
          ),
          Icon(
            Icons.person_pin_circle,
            color: Colors.orange,
            size: 64,
          ),
          Icon(
            Icons.person_pin_circle,
            color: Colors.purple,
            size: 64,
          ),
          Icon(
            Icons.person_pin_circle,
            color: Colors.blue,
            size: 64,
          ),
        ],
      ),
    );
  }

  Widget containerFreaturs() {
    return Center(
        child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.orange,
          image: DecorationImage(
              image: NetworkImage(
                  "https://w0.peakpx.com/wallpaper/698/192/HD-wallpaper-nature-nature-thumbnail.jpg"),
              fit: BoxFit.scaleDown),
          border: Border.all(color: Colors.purple, width: 4),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.green, offset: Offset(10, 10), blurRadius: 10),
            BoxShadow(
                color: Colors.yellow, offset: Offset(10, -10), blurRadius: 20)
          ]),
    ));
  }

  Widget centerFeatures() {
    return Container(
      child: Center(
        heightFactor: 3,
        widthFactor: 3,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.orange,
        ),
      ),
    );
  }

  Widget containerLesson() {
    return Center(
      child: Container(
          height: 200,
          width: 200,
          color: Colors.orange,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(40),
            color: Colors.green,
            child: Text("Hello World"),
          )),
    );
  }
  */
}
