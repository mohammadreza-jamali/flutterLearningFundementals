import 'package:flutter/material.dart';

class ListUsage extends StatelessWidget {
   ListUsage({super.key});

   List<Person> items=List<Person>.generate(500, (index) => Person(index+1, "Name ${index+1}", "LastName ${index+1}"));

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title:Text("List Usage"),
      ),
      body:  ListView(
          children: items
              .map((item) => Card(
                child: ListTile(
                      leading: CircleAvatar(
                        child: Text(item.id.toString()),
                      ),
                      title: Text(item.name),
                      subtitle: Text(item.lastName),
                    ),
              ))
              .toList()));
  }
}
class Person{
  int id;
  String name;
  String lastName;
  Person(this.id,this.name,this.lastName);
}