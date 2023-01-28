import 'package:flutter/material.dart';

class CardTile extends StatefulWidget {
  const CardTile({super.key});

  @override
  State<CardTile> createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card Tile")),
      body: Center(
        child: ListView(
          reverse: true,
          children: [
            getListTitle(),
          getListTitle(),
          getListTitle(),
          getListTitle(),
          getListTitle(),
          getListTitle(),
          getListTitle(),
          getListTitle(),
          getListTitle(),
          getListTitle(),
          ElevatedButton(onPressed: (){}, child: Text("Submit"))
          ],
        )
      ),
    );
  }

  Widget scrollUsage(){

    return SingleChildScrollView (
          child: Column(
            children: [
              getListTitle(),
              getListTitle(),
              getListTitle(),
              getListTitle(),
              getListTitle(),
              getListTitle(),
              getListTitle(),
              getListTitle(),
              getListTitle(),
              getListTitle(),
        
            ],
          ),
        );
  }

  Column getListTitle() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Colors.blue.shade100,
            shadowColor: Colors.orange,
            elevation: 12,
            child: ListTile(
              leading: Icon(Icons.add),
              title: Text("Test Title"),
              subtitle: Text("Test Sub Title"),
              trailing: Icon(Icons.ac_unit),
            ),
          ),
          Divider(
            color: Colors.red,
            thickness: 1,
            height: 10,
            indent: 20,
            endIndent: 20,
          )
        ],
      );
  }
}