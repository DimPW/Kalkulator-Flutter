import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  TextEditingController ctrPhone = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
     body : Container(
      margin: EdgeInsets.all(10),
      child : Column(
        children:[
          TextField(
            controller : ctrPhone,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukan Nomor',
              ),
          ),
          ElevatedButton(
            onPressed: (){
             
            },
            child: Text("Submit"),
          )
        ]
      )
     )
    );
  }
}