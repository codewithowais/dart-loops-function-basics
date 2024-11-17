import 'package:dot_curved_bottom_nav/dot_curved_bottom_nav.dart';
import 'package:flutter/material.dart';

class ABC extends StatefulWidget {
  const ABC({super.key});

  @override
  State<ABC> createState() => _ABCState();
}

class _ABCState extends State<ABC> {
  final ScrollController _scrollController = ScrollController();
  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          // Expanded(
          //   child: Container(
          //     color: Colors.blue,
          //   ),
          // ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple,
            ),
          ),
        ],
      ),
      bottomNavigationBar: DotCurvedBottomNav(
        scrollController: _scrollController,
        hideOnScroll: true,
        indicatorColor: Colors.blue,
        backgroundColor: Colors.black,
        animationDuration: const Duration(milliseconds: 300),
        animationCurve: Curves.ease,
        selectedIndex: currentPage,
        indicatorSize: 5,
        borderRadius: 25,
        height: 70,
        onTap: (index) {
          // setState(() => _currentPage = index);
        },
        items: [
          Icon(
            Icons.home,
            color: currentPage == 0 ? Colors.blue : Colors.white,
          ),
          Icon(
            Icons.notification_add,
            color: currentPage == 1 ? Colors.blue : Colors.white,
          ),
          Icon(
            Icons.color_lens,
            color: currentPage == 2 ? Colors.blue : Colors.white,
          ),
          Icon(
            Icons.person,
            color: currentPage == 3 ? Colors.blue : Colors.white,
          ),
        ],
      ),
    );
  }
}
