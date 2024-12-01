import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetFirebaseUsers extends StatefulWidget {
  const GetFirebaseUsers({super.key});

  @override
  State<GetFirebaseUsers> createState() => _GetFirebaseUsersState();
}

class _GetFirebaseUsersState extends State<GetFirebaseUsers> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  updatUser(docId) async {
    await users
        .doc(docId)
        .update({
          "name": "Muhammad Owais Ahmed Updated",
          "userName": "Codewithowais Updated",
          "email": "Codewithowais@Updated.com",
          "profileImage": "Codewithowais Updated",
        })
        .then((vlaue) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }

  deleteUser(docId) async {
    await users
        .doc(docId)
        .delete()
        .then((value) => print("object"))
        .catchError((error) => print("error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: users.get(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    "name: ${snapshot.data!.docs[index]['userName']}",
                  ),
                  subtitle: Text("$index ${snapshot.data!.docs[index].id}"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () async {
                          await updatUser(snapshot.data!.docs[index].id);
                        },
                        icon: const Icon(Icons.edit_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete_forever_outlined),
                      ),
                    ],
                  ),
                );
              },
            );
          }
          return const RefreshProgressIndicator();
        },
      ),
    );
  }
}
