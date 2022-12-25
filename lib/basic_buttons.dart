import 'package:flutter/material.dart';

class BasicButtons extends StatelessWidget {
  const BasicButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basic Buttons")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
              TextButton(onPressed: (){} , child: Text("Text Button"),
               onLongPress: () {
                  print("text button");
                },
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber) ),
              ),
               TextButton.icon(onPressed: (){}, icon: Icon(Icons.person), label: Text("Text Button"),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.teal
                ),
               ),
               ElevatedButton(onPressed: (){}, child: Text("Eleveted Button"),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states){
                  if(states.contains(MaterialState.pressed))
                   return Colors.purple;

                   if (states.contains(MaterialState.hovered))
                  return Colors.orange;

                   return null;
                } )),
               ),
               ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.person), label: Text("Eleveted Button")),
               OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
               OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.person), label: Text("Outlined Button")),
          ],
        ),
      ),
    );
  }
}