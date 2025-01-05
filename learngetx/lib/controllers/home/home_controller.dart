import 'package:get/get.dart';

class HomeController extends GetxController {
  // int count = 0;
  // increaseCount() {
  //   count++;
  //   update();
  //   print(count);
  // }
  RxInt count = 0.obs;
  increaseCount() {
    count++;
    // count.value = 3;
    print(count);
  }
}
