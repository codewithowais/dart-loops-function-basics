import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseAddUser extends StatefulWidget {
  const FirebaseAddUser({super.key});

  @override
  State<FirebaseAddUser> createState() => _FirebaseAddUserState();
}

class _FirebaseAddUserState extends State<FirebaseAddUser> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  TextEditingController nameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController profileImageController = TextEditingController();

  addUser() async {
    await users
        .add({
          "name": nameController.text,
          "userName": "Codewithowais",
          "email": "Codewithowais",
          "profileImage": "Codewithowais",
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await addUser();
            },
            child: const Text("Add User"),
          ),
        ],
      ),
    );
  }
}
