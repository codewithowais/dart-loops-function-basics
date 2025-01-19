import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnapiintegrationsec2/services/api_service.dart';
import 'package:learnapiintegrationsec2/users/user_controller.dart';
import 'package:learnapiintegrationsec2/users/user_view.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  UserController userControl = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              userControl.getData();
            },
            child: Text("Get Data"),
          ),
          GetBuilder<UserController>(builder: (context) {
            return userControl.userData.length == 0
                ? CircularProgressIndicator()
                : ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: userControl.userData.length,
                    itemBuilder: (context, abc) {
                      return Text("${userControl.userData[abc]["name"]}");
                    });
          })
        ],
      ),
      // body: FutureBuilder(
      //   future: apiService.getUsersData(),
      //   builder: (context, snapShot) {
      //     if (snapShot.hasData) {
      //       return ListView.builder(
      //         itemCount: snapShot.data.length,
      //         itemBuilder: (context, index) {
      //           return ListTile(
      //             title: Text("${snapShot.data[index]['name']}"),
      //           );
      //         },
      //       );
      //     }
      //     return const CircularProgressIndicator();
      //   },
      // ),
    );
  }
}
