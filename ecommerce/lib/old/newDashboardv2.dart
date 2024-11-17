import 'package:ecommerce/old/screen2.dart';
import 'package:flutter/material.dart';

class Newdashboardv2View extends StatefulWidget {
  const Newdashboardv2View({super.key});

  @override
  State<Newdashboardv2View> createState() => _Newdashboardv2ViewState();
}

class _Newdashboardv2ViewState extends State<Newdashboardv2View> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.dashboard)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Screen2View(),
            Column(
              children: [
                Container(
                  child: const Text("Current Index 1"),
                ),
                TextField()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
