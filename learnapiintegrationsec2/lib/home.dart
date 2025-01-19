import 'package:flutter/material.dart';
import 'package:learnapiintegrationsec2/services/api_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ApiService apiService = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: apiService.getUsersData(),
        builder: (context, snapShot) {
          if (snapShot.hasData) {
            return ListView.builder(
              itemCount: snapShot.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${snapShot.data[index]['name']}"),
                );
              },
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
