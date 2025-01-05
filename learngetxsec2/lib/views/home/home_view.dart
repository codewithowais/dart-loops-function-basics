import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetxsec2/controllers/home/home_controller.dart';
import 'package:learngetxsec2/utils/font_size_constants.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeController homeControl = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<HomeController>(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${homeControl.count}",
                  style: TextStyle(
                    fontSize: FontSizeConstants.HEADING_TEXT,
                  ))
            ],
          );
        }),
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
