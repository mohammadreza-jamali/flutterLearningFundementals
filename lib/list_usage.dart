import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
      body:ListView.separated(itemBuilder: (context, index){
        return Card(
          child: ListTile(
            onTap: (){
              //print("tapped Item is $index");
              EasyLoading.instance.backgroundColor=Colors.purple;
              EasyLoading.showToast('item ${index+1} is tapped',
              duration: Duration(seconds: 5),
              toastPosition: EasyLoadingToastPosition.bottom,
              dismissOnTap: true);
            },
            onLongPress: (){
              showDialog(barrierDismissible: false,context: context, builder: (context) {
                return AlertDialog(
                  title: Text(items[index].toString()),
                  content: SingleChildScrollView(
                    child:ListBody(
                      children: [
                        Text(" this is test"*200)
                      ],
                    )
                     ),
                     actions: [
                      
                          TextButton(onPressed: () {}, child: Text("Ok")),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    }, child: Text("Cancel")),
  
                      
                     ],
                );
              });
            },
                      leading: CircleAvatar(
                        child: Text(items[index].id.toString()),
                      ),
                      title: Text(items[index].name),
                      subtitle: Text(items[index].lastName),
                    ),
        );
      },
      separatorBuilder: (context, index){
        if((index+1)%5==0)
        return Divider( thickness: 2,color: Colors.orange.shade100,);

        return SizedBox();
      },
      itemCount: items.length,
      )
      );
  }

  ListView classicListView() {
    return ListView(
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
            .toList());
  }
}
class Person{
  int id;
  String name;
  String lastName;
  Person(this.id,this.name,this.lastName);
  @override
  String toString() => "$name $lastName";
 }