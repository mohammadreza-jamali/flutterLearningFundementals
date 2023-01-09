import 'package:flutter/material.dart';

class PopupMenuUsage extends StatefulWidget {
  const PopupMenuUsage({super.key});

  @override
  State<PopupMenuUsage> createState() => _PopupMenuUsageState();
}

class _PopupMenuUsageState extends State<PopupMenuUsage> {
  var colors = ["blue", "red", "brown", "green"];
  String? _selectedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Popup Menu Usage"),
          actions: [
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                //  return <PopupMenuEntry<String>>[
                //     PopupMenuItem(child: Text("Blue"),value: "blue",),
                //     PopupMenuItem(child: Text("Red"),value: "red",),
                //     PopupMenuItem(child: Text("Brown"),value: "brown",),
                //     PopupMenuItem(child: Text("Green"),value: "green",),
                //  ];
                return colors
                    .map((color) => PopupMenuItem(
                          child: Text(color),
                          value: color,
                        ))
                    .toList();
              },
              onSelected: (value) {
                print(value);
                _selectedColor = value;
              },
              icon: Icon(Icons.menu),
            ),
          ],
        ),
        body: Center(
          child: PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              //  return <PopupMenuEntry<String>>[
              //     PopupMenuItem(child: Text("Blue"),value: "blue",),
              //     PopupMenuItem(child: Text("Red"),value: "red",),
              //     PopupMenuItem(child: Text("Brown"),value: "brown",),
              //     PopupMenuItem(child: Text("Green"),value: "green",),
              //  ];
              return colors
                  .map((color) => PopupMenuItem(
                        child: Text(color),
                        value: color,
                      ))
                  .toList();
            },
            onSelected: (value) {
              print(value);
              _selectedColor = value;
            },
            icon: Icon(Icons.menu),
          ),
        ));
  }
}
