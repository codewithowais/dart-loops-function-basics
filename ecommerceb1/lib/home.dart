
import 'package:ecommerceb1/chat.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List chats = [
    {
      'name': 'codewithowais',
      'lastMessage': 'Hellloooooo....',
      'image': '',
      'status': '',
      'time': '',
      'notificationCount': ''
    },
    {
      'name': 'codewithAbs',
      'lastMessage': 'Hellloooooo ABS....',
      'image': '',
      'status': '',
      'time': '',
      'notificationCount': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        // leading: const Text("Leading"),
        title: const Text("Whatsapp"),
        actions: const [
          Text("Action 1"),
          Text("Action 2"),
          Text("Action 3"),
          Text("Action 4"),
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, i) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatView(),
                ),
              );
            },
            tileColor: Colors.blue,
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1476170969/photo/portrait-of-young-man-ready-for-job-business-concept.jpg?s=2048x2048&w=is&k=20&c=yif473DFhN451o-tNC1tASFFoP5QTOYcqS26dhEbv6U='),
            ),
            title: Text("${chats[i]['name']}"),
            subtitle: const Text('Helloooo........'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    // var obj = chats[i]['name'];
                    // chats[i]['name'] = "$obj updated";
                    // setState(() {});
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => Dialog(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text('This is a typical dialog.'),
                              const SizedBox(height: 15),
                              const TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                ),
                              ),
                              const SizedBox(height: 15),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Close'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {
                    chats.removeAt(i);
                    setState(() {});
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          chats.add({
            'name': 'codewithowais ${chats.length + 1}',
            'lastMessage': 'Hellloooooo ABS....',
            'image': '',
            'status': '',
            'time': '',
            'notificationCount': ''
          });
          setState(() {});
          print(chats);
        },
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: Container(
          child: const Column(
            children: [
              // DrawerHeader(
              //   decoration: BoxDecoration(color: Colors.red),
              //   child: Text("Hello"),
              // )
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(),
                accountName: Text("Codewithowais"),
                accountEmail: Text("codewithowais@gmail.com"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
