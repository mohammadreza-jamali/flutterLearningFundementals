import 'package:flutter/material.dart';

class GridViewUsage extends StatefulWidget {
  const GridViewUsage({super.key});

  @override
  State<GridViewUsage> createState() => _GridViewUsageState();
}

class _GridViewUsageState extends State<GridViewUsage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Usage"),
        ),
        body: showGridViewBuilder());
  }

  showGridViewCount() {
    return GridView.count(
      primary: false,
      crossAxisCount: 3,
      crossAxisSpacing: 20,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.vertical,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 1",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 2",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 3",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 4",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 5",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 6",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 7",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 8",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 9",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  showGridViewExtent() {
    return GridView.extent(
      maxCrossAxisExtent: 400,
      crossAxisSpacing: 20,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 1",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 2",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 3",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 4",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 5",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 6",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 7",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 8",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "Grid Item 9",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  //SliverGridDelegateWithFixedCrossAxisCount
  //SliverGridDelegateWithMaxCrossAxisExtent
  showGridViewBuilder() {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        itemCount: 10,
        padding: EdgeInsets.all(10),
        shrinkWrap: false,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            color: Colors.purple,
            // gradient: LinearGradient(
            //   colors: [Colors.green,Colors.blue,Colors.teal],
            //   begin: Alignment.topLeft,
            //   end: Alignment(1, 1),
            //   stops: [0.2,0.5,1]
            // ),
             image: DecorationImage(image: AssetImage("assets/images/tabriz.jpg"),fit: BoxFit.fill),
             border: Border.all(color: Colors.orange),
            //  borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(color: Colors.red.shade400,
              blurRadius: 8,
              spreadRadius: 1,
              offset: Offset(2, 2))
            ],
            shape: BoxShape.circle

          ),
          alignment: Alignment.center,
          // color: Colors.purple,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Grid Item $index",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
