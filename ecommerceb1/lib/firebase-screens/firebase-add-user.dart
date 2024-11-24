import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FireBaseAddUser extends StatefulWidget {
  const FireBaseAddUser({super.key});

  @override
  State<FireBaseAddUser> createState() => _FireBaseAddUserState();
}

class _FireBaseAddUserState extends State<FireBaseAddUser> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  addUser() async {
    await users
        .add({
          "name": "Muhammad Owais Ahmed",
          "userName": "Codewithowais",
          "email": "Codewithowais",
          "profileImage": "",
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await addUser();
            },
            child: const Text("Add User"),
          )
        ],
      ),
    );
  }
}
