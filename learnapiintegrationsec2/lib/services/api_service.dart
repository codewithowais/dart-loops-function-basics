import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<dynamic> getUsersData() async {
    var url = Uri.parse(baseUrl + "/users");
    var response = await http.get(url);
    print("this is status code ${response.statusCode}");
    var users = jsonDecode(response.body);
    print(users);
    return users;
  }
}
