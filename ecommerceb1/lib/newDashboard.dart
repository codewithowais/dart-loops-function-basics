import 'package:ecommerceb1/screen2.dart';
import 'package:flutter/material.dart';

class NewdashboardView extends StatefulWidget {
  const NewdashboardView({super.key});

  @override
  State<NewdashboardView> createState() => _NewdashboardViewState();
}

class _NewdashboardViewState extends State<NewdashboardView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: getCrrentView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_emergency), label: "Contact"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
        ],
      ),
    );
  }

  Widget getCrrentView() {
    if (currentIndex == 0) {
      return Container(
        child: Text("Current Index 0"),
      );
    } else if (currentIndex == 1) {
      return const Screen2View();
    } else if (currentIndex == 2) {
      return Container(
        child: Text("Current Index 2"),
      );
    } else if (currentIndex == 3) {
      return Container(
        child: Text("Current Index 3"),
      );
    } else {
      return Container(
        child: Text("Current Index Default"),
      );
    }
  }
}
