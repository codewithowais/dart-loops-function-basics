import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetFirebaseUser extends StatefulWidget {
  const GetFirebaseUser({super.key});

  @override
  State<GetFirebaseUser> createState() => _GetFirebaseUserState();
}

class _GetFirebaseUserState extends State<GetFirebaseUser> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: FutureBuilder(
          future: users.get(),
          builder: (context, snapShot) {
            if (snapShot.hasData) {
              return ListView.builder(
                itemCount: snapShot.data!.docs.length,
                itemBuilder: (context, index) {
                  return Text(
                    "data ${snapShot.data!.docs[index]['userName']}",
                  );
                },
              );
            }
            return Center(child: const RefreshProgressIndicator());
          },
        ));
  }
}
