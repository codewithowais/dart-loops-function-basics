import 'package:flutter/material.dart';
import 'package:learnapiintegration/getUserInfo.dart';
import 'package:learnapiintegration/services/api_service.dart';
import 'package:learnapiintegration/users/user_view.dart';

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
  }

  getData() async {
    var usersData = await apiService.getUsersData();
    // print(usersData);
    setState(() {
      userDataList = usersData;
    });
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserView()));
                },
                child: Text("navigate")),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: userDataList.length,
                itemBuilder: (context, sohail) {
                  return Text("${userDataList[sohail]["name"]}");
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
