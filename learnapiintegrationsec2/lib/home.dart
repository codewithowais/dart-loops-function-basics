import 'package:flutter/material.dart';
import 'package:learnapiintegrationsec2/services/api_service.dart';
import 'package:learnapiintegrationsec2/users/user_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ApiService apiService = ApiService();
  List userData = [];
  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    var uData = await apiService.getUsersData();
    print(uData);
    setState(() {
      userData = uData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              // getData();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => UserView()));
            },
            child: Text("Gnvigate"),
          ),
          userData.length == 0
              ? CircularProgressIndicator()
              : ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: userData.length,
                  itemBuilder: (context, abc) {
                    return Text("${userData[abc]["name"]}");
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
