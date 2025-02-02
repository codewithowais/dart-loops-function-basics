import 'package:flutter/material.dart';
import 'package:learnapiintegration/getUserInfo.dart';
import 'package:learnapiintegration/services/api_service.dart';
import 'package:learnapiintegration/users/user_view.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ApiService apiService = ApiService();
  List userDataList = [];
  @override
  void initState() {
    getData();
    super.initState();
    localData();
  }

  getData() async {
    var usersData = await apiService.getUsersData();
    // print(usersData);
    setState(() {
      userDataList = usersData;
    });
  }

  localData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', "shah@gmil.com");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  // getData();
                  // localData();
                  print("Hello context is here = $context");
                  // Get.to(UserView());

                  // Get.snackbar("Hi", "sohail",
                  //     snackPosition: SnackPosition.BOTTOM);
                  // Get.dialog(Scaffold(body: Text("data")));
                  // Get.defaultDialog(
                  //     textConfirm: "Yees",
                  //     onConfirm: () {
                  //       Get.back();
                  //     },
                  //     title: "Sohail",
                  //     content: Text(
                  //       "kia baat ha",
                  //     ),
                  //     actions: [
                  //       ElevatedButton(onPressed: () {}, child: Text("hi"))
                  //     ]);
                  // Get.dialog(Text("data"));
                  // Get.defaultDialog(
                  //   title: "dsdsd",
                  //   textCustom: "asnsan",
                  //   content: Text("data"),
                  //   actions: [
                  //     ElevatedButton(onPressed: () {}, child: Text("data")),
                  //     ElevatedButton(onPressed: () {}, child: Text("data")),
                  //     ElevatedButton(onPressed: () {}, child: Text("data")),
                  //     ElevatedButton(onPressed: () {}, child: Text("data")),
                  //     ElevatedButton(onPressed: () {}, child: Text("data")),
                  //   ],
                  // );
                  Get.to(UserView());
                  // Get.off(UserView());
                  // Get.back();
                  // // Get.offAll(UserView());
                  // // Get.offUntil(UserView());
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => UserView()));
                },
                child: Text("navigate")),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: userDataList.length,
                itemBuilder: (context, sohail) {
                  return Text(
                    "${userDataList[sohail].name}",
                    style: TextStyle(fontSize: Get.width * 0.04),
                  );
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
