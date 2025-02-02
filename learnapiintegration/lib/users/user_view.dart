import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnapiintegration/getUserInfo.dart';
import 'package:learnapiintegration/users/user_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserView extends StatelessWidget {
  UserView({super.key});

  UserController userControl = Get.put(UserController());
  final UserControl1 = Get.find<UserController>();
  final UserControl12 = Get.lazyPut<UserController>;

  localData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var email = await prefs.getString('email');
    print("email is this $email");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              // Navigator.pop(context);
              // Get.back();
              // localData();
              // userControl.dispose();
            },
            icon: Icon(Icons.back_hand)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  userControl.getData();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GetuserinfoView(
                                id: 2,
                              )));
                },
                child: Text("I am getting the data")),
            GetBuilder<UserController>(builder: (context) {
              return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: userControl.userDataList.length,
                  itemBuilder: (context, sohail) {
                    return Text(
                        "${userControl.userDataList[sohail].address?.geo!.lat}");
                  });
            })
          ],
        ),
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
      //             subtitle: Text("${snapShot.data[index]['id']}"),
      //             onTap: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (context) =>
      //                       GetuserinfoView(id: snapShot.data[index]['id']),
      //                 ),
      //               );
      //             },
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
