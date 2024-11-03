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
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.dashboard)),
              Tab(icon: Icon(Icons.favorite)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Text("Tab 1"),
            ),
            Container(
              child: Text("Tab 2"),
            ),
            Container(
              child: Text("Tab 3"),
            ),
          ],
        ),
      ),
    );
  }
}
