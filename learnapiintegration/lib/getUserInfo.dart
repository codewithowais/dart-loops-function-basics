import 'package:flutter/material.dart';
import 'package:learnapiintegration/services/api_service.dart';

class GetuserinfoView extends StatefulWidget {
  int? id;
  GetuserinfoView({super.key, this.id});

  @override
  State<GetuserinfoView> createState() => _GetuserinfoViewState();
}

class _GetuserinfoViewState extends State<GetuserinfoView> {
  ApiService apiService = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.id}"),
      ),
      body: FutureBuilder(
          future: apiService.getUserById(widget.id),
          builder: (context, snapShot) {
            if (snapShot.hasData) {
              return ListTile(
                title: Text("${snapShot.data.name}"),
                subtitle: Text("${snapShot.data.email}"),
              );
            }
            return const CircularProgressIndicator();
          }),
    );
  }
}
