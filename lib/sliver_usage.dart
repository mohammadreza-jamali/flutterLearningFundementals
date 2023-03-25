import 'dart:math';

import 'package:flutter/material.dart';

class SliversUsage extends StatelessWidget {
  const SliversUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Colappsable App Bar"),
          expandedHeight: 200,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(background: Image.asset("assets/images/tabriz.jpg",fit: BoxFit.cover,)),
          snap: true,
        ),
        SliverPadding(padding: EdgeInsets.all(10),sliver:  _listExample(),),
        SliverPadding(padding: EdgeInsets.all(20),sliver:  _listWithBuilder(),),
        _listExtent(), 
        SliverPadding( padding: EdgeInsets.all(10), sliver: _fixGrid()),
        SliverPadding( padding: EdgeInsets.all(10), sliver: _builderGrid(),),
        
      ]
    );
  }

  _listExample(){
    return SliverList(delegate: SliverChildListDelegate(
      [
        getListItem(1),
        getListItem(2),
        getListItem(3),
        getListItem(4),
        getListItem(5),
        getListItem(6),
      ]
    ));
  }
  
  _listWithBuilder(){
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => getListItem(index+1)),
    );
  }
  
  _listExtent(){
    return SliverFixedExtentList(delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => getListItem(index+1)), itemExtent: 100);
  }
  
  _fixGrid(){
    // return SliverGrid(delegate: SliverChildListDelegate(
    //   [
    //     getListItem(1),
    //     getListItem(2),
    //     getListItem(3),
    //     getListItem(4),
    //     getListItem(5),
    //     getListItem(6),
    //   ]
    // ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3));
    // return SliverGrid.count(crossAxisCount: 2,children: [
    //   getListItem(1),
    //     getListItem(2),
    //     getListItem(3),
    //     getListItem(4),
    //     getListItem(5),
    //     getListItem(6)
    //     ]
    // );
    return SliverGrid.extent(maxCrossAxisExtent: 100,children: [
      getListItem(1),
        getListItem(2),
        getListItem(3),
        getListItem(4),
        getListItem(5),
        getListItem(6)
        ]
    );
  }
  _builderGrid(){
    // return SliverGrid(delegate: SliverChildBuilderDelegate(
    //         childCount: 10, (context, index) => getListItem(index + 1)),
    //          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2));

    return SliverGrid.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    itemCount: 10,
     itemBuilder:(context,index)=> getListItem(index + 1));
  }

  getListItem(index){
    return ListTile(leading: Icon(Icons.add_circle_outline),title: Text("Item $index"),tileColor: createRandomColor(),);
  }
  createRandomColor(){
    return Color.fromARGB(255,Random().nextInt(255) , Random().nextInt(255), Random().nextInt(255));
  }
}
