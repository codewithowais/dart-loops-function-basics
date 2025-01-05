import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/controllers/home/home_controller.dart';
import 'package:learngetx/utils/font_size_contants.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeController homeControl = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GetBuilder<HomeController>(builder: (context) {
      //   return Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Text("Home"),
      //         Text(
      //           "${homeControl.count}",
      //           style: TextStyle(fontSize: FontSizeContants.EXTRA_LARGE_TEXT),
      //         )
      //       ],
      //     ),
      //   );
      // }),
      // body: GetX<HomeController>(builder: (context) {
      //   return Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Text("Home"),
      //         Text(
      //           "${homeControl.count}",
      //           style: TextStyle(fontSize: FontSizeContants.EXTRA_LARGE_TEXT),
      //         )
      //       ],
      //     ),
      //   );
      // }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Home"),
            Obx(() => Text(
                  "${homeControl.count}",
                  style: TextStyle(fontSize: FontSizeContants.EXTRA_LARGE_TEXT),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeControl.increaseCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
