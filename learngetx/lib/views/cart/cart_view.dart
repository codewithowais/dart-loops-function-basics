// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:learngetx/controllers/home/home_controller.dart';
// import 'package:learngetx/utils/font_size_contants.dart';
// import 'package:learngetx/views/home/home_view.dart';

// class CartView extends StatelessWidget {
//   CartView({super.key});
//   HomeController homeControl = Get.put(HomeController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GetBuilder<HomeController>(builder: (context) {
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text("Cart"),
//               Text(
//                 "${homeControl.count}",
//                 style: TextStyle(fontSize: FontSizeContants.EXTRA_LARGE_TEXT),
//               )
//             ],
//           ),
//         );
//       }),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => HomeView()));
//       }),
//     );
//   }
// }
