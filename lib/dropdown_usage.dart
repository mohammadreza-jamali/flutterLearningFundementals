import 'package:flutter/material.dart';

class DropDownUsage extends StatefulWidget {
  const DropDownUsage({super.key});

  @override
  State<DropDownUsage> createState() => _DropDownUsageState();
}

class _DropDownUsageState extends State<DropDownUsage> {
   var cities=["tabriz","ardebil","urumiye","zanjan"];
  String? _selectedCity=null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("DropDown Usage")),
         body: Center(
          child: DropdownButton<String>(

            // items: [
            //   DropdownMenuItem(child: Text("Tabriz"),value: "tabriz",),
            //   DropdownMenuItem(child: Text("Ardebil"),value: "ardebil",),
            //   DropdownMenuItem(child: Text("Urumiye"),value: "urumiye",),
            //   DropdownMenuItem(child: Text("Zanjan"),value: "zanjan",),
            // ],
            items: cities.map((city) => DropdownMenuItem(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/images/$city.jpg")),
                  value: city,
                ) ).toList(),
            value: _selectedCity,
            hint: Text("select city"),
            onChanged: (String? value){
              print(value);
              setState(() {
                _selectedCity = value;
              });
            },
          ),
         )
         );
  }
}
