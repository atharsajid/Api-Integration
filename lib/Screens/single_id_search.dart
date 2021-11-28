import 'package:api/Services/services.dart';
import 'package:flutter/material.dart';

class SingleId extends StatefulWidget {
  const SingleId({Key? key}) : super(key: key);

  @override
  _SingleIdState createState() => _SingleIdState();
}

class _SingleIdState extends State<SingleId> {
  String abc = "1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              abc = value;
            },
          ),
          ElevatedButton(
            onPressed: () {
              
            },
            child: Text("search"),
          ),
          FutureBuilder(
            future: getUserbyId(),
            builder: (context,snapshot){
            return 
          })
        ],
      ),
    );
  }
}
