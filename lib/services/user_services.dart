import 'dart:convert';
import 'package:apiintegerationsmodel/models/users_models.dart';
import 'package:http/http.dart' as http;


getUsers () async{
List userList = [];
  String uri = "https://jsonplaceholder.typicode.com/users";
  var response = await http.get(Uri.parse(uri));
  var data = jsonDecode(response.body);
  for (var i in data) {
    userList.add(UserModel.fromJson(i));
  }
  return userList;
}