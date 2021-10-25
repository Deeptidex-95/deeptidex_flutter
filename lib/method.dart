import 'dart:convert';
import 'package:button_prj/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


Future <dynamic> fetchData() async {
  final response =
  await http.get('https://jsonplaceholder.typicode.com/albums');
  if (response.statusCode == 200) {
    var jsonResponse = json.decode(response.body);
    print("Hello");
    print(jsonResponse);
    return jsonResponse;
    /*jsonResponse.map((data) => new Post.fromJson(data))*/;

  } else {
    throw Exception('Unexpected error occured!');
  }
}
