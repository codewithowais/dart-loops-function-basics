import 'package:get/get.dart';

class HomeController extends GetxController {
  int count = 0;
  increaseCount() {
    count++;
    update();
    print(count);
  }
}
