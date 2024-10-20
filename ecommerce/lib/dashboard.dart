import 'package:ecommerce/home.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});

  List chats = [
    {
      "name": "codewithowais",
      'image':
          'https://cdn.pixabay.com/photo/2016/02/13/13/11/oldtimer-1197800_640.jpg',
      'lastMessage': 'hellloooooooo',
      'messageTime': '',
      'status': '',
      'notificationCount': '',
    },
    {
      "name": "Ahmed",
      'image':
          'https://cdn.pixabay.com/photo/2016/03/11/02/08/speedometer-1249610_640.jpg',
      'lastMessage': 'helllooo123',
      'messageTime': '',
      'status': '',
      'notificationCount': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        // leading: const Text("data"),
        title: const Text("ABC"),
        actions: const [Text("ABC"), Text("ABC")],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeView(),
                ),
              );
            },
            tileColor: Colors.lightBlue,
            leading: CircleAvatar(
              backgroundImage: NetworkImage(chats[index]['image']),
            ),
            title: Text("${chats[index]['name']}"),
            subtitle: const Text("helllooo.........."),
            trailing: const Icon(Icons.notifications_off_outlined),
          );
        },
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       // DrawerHeader(
      //       //   decoration: BoxDecoration(color: Colors.red),
      //       //   child: Text("data"),
      //       // ),
      //       const UserAccountsDrawerHeader(
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: NetworkImage(
      //               'https://cdn.pixabay.com/photo/2018/07/01/20/01/dashboard-3510327_1280.jpg'),
      //         ),
      //         accountName: Text("codewithowais"),
      //         accountEmail: Text("codewithowais@gmail.com"),
      //       ),
      //       ListTile(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => const HomeView(),
      //             ),
      //           );
      //         },
      //         title: const Text('Home'),
      //       ),
      //       const ListTile(
      //         title: Text('About'),
      //       ),
      //       const ListTile(
      //         title: Text('Contact'),
      //       ),
      //       const ListTile(
      //         title: Text('Profile'),
      //       ),
      //     ],
      //   ),
      // ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeView(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
