import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = 'https://jsonplaceholder.typicode.com/users';

  Future getUsersData() async {
    var url = Uri.parse(baseUrl);
    var response = await http.get(url);
    print("this is status  ${response.statusCode}");
    var users = jsonDecode(response.body);
    return users;
  }

  Future getUserById(id) async {
    var url = Uri.parse('${baseUrl}/${id}');
    var response = await http.get(
      url,
    );
    // var response = await http.post(url, body: jsonEncode({"name": "sa4343"}));
    var user = jsonDecode(response.body);
    print(user);
    return user;
  }
}
