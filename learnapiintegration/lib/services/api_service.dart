import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = 'https://jsonplaceholder.typicode.com/users';

  Future getUsersData() async {
    var url = Uri.parse(baseUrl);
    var response = await http.get(url);
    var users = jsonDecode(response.body);
    print(users);
    return users;
  }

  Future getUserById(id) async {
    var url = Uri.parse(baseUrl);
    var response = await http.get(url);
    var user = jsonDecode(response.body);
    print(user);
    return user;
  }
}
