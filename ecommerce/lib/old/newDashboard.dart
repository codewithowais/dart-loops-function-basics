import 'package:ecommerce/old/home.dart';
import 'package:ecommerce/old/screen2.dart';
import 'package:flutter/material.dart';

class NewdashboardView extends StatefulWidget {
  const NewdashboardView({super.key});

  @override
  State<NewdashboardView> createState() => _NewdashboardViewState();
}

class _NewdashboardViewState extends State<NewdashboardView> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getCurrentAppBar(),
      body: getCurrentView(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: currentIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.purple,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_emergency), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined), label: "Home"),
          ]),
    );
  }

  PreferredSizeWidget getCurrentAppBar() {
    if (currentIndex == 0) {
      return AppBar(
        title: Text("Current Index 0"),
        backgroundColor: Colors.blue,
      );
    } else {
      return AppBar(
        title: Text("Current Index Default"),
        backgroundColor: Colors.blue,
      );
    }
  }

  Widget getCurrentView() {
    if (currentIndex == 0) {
      return Column(
        children: [
          Container(
            child: const Text("Current Index 0"),
          ),
          TextField()
        ],
      );
    } else if (currentIndex == 1) {
      return Screen2View();
    } else if (currentIndex == 2) {
      return Container(
        child: const Text("Current Index 2"),
      );
    } else if (currentIndex == 3) {
      return Container(
        child: const Text("Current Index 3"),
      );
    } else {
      return Container(
        child: const Text("Current Index Default"),
      );
    }
  }
}
