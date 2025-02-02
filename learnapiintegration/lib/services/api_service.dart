import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learnapiintegration/models/users_model.dart';

class ApiService {
  String baseUrl = 'https://jsonplaceholder.typicode.com/users';

  Future getUsersData() async {
    List<UsersModel> userList = [];

    var url = Uri.parse(baseUrl);
    var response = await http.get(url);
    print("this is status  ${response.statusCode}");
    var users = jsonDecode(response.body);
    print("usersohail $users");

    for (var userData in users) {
      userList.add(UsersModel.fromJson(userData));
    }
    print("2045 ${userList}");
    print("2034 $users");
    return userList;
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
