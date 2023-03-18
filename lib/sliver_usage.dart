import 'dart:math';

import 'package:flutter/material.dart';

class SliversUsage extends StatelessWidget {
  const SliversUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          title: Text("Colappsable App Bar"),
          expandedHeight: 200,
          floating: true,
          pinned: true,
        ),
        _listExample()
      ],

    );
  }
  _listExample(){
    return SliverFixedExtentList(delegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 4,horizontal: 2),
            color: Colors.amber.withBlue(Random().nextInt(255)),
          );
        }), itemExtent: 200);
  }
}
