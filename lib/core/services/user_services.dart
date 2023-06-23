import 'dart:convert';

import '../modal/user_modal.dart';
import 'package:http/http.dart' as http;

class DataService {
  final String Url = "https://jsonplaceholder.typicode.com/users";

  Future<List> userDownload() async {
    final response = await http.get(Uri.parse(Url));

    if (response.statusCode == 200) {
      var jsonData= jsonDecode(response.body);
      List<User> users = [];
      for (var userJson in jsonData) {
        users.add(User.fromJson(userJson));
      }
      return users;
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  }
}
