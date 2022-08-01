import 'package:aladin/kalkulator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class formRegistration extends StatefulWidget {
const formRegistration({Key? key}) : super(key: key);

  @override
  State<formRegistration> createState() => _formRegistrationState();
}

class _formRegistrationState extends State<formRegistration> {
  TextEditingController ctrPhoneNumber = new TextEditingController();
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
            keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              controller: ctrPhoneNumber,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukan Nomor Telephone',
              ),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.pop(
              context,ctrPhoneNumber.text );

            },
            child: Text("Submit"),
          )
        ]
      )
     )
    );
  }
}