import 'dart:convert';

import 'package:api/Model/model.dart';
import 'package:http/http.dart' as http;

getuser() async {
  var reponse = await http.get(
    Uri.https("jsonplaceholder.typicode.com", "users"),
  );
  var jasonData = jsonDecode(reponse.body);
  List<UserModel> userlist = [];
  for (var i in jasonData) {
    UserModel user = UserModel(
        id: i["id"],
        name: i["name"],
        username: i["username"],
        email: i["email"],
        address: i["address"]["city"]);
    userlist.add(user);
  }

  return userlist;
}
