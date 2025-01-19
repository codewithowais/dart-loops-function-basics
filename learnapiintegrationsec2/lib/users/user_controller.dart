import 'package:get/get.dart';
import 'package:learnapiintegrationsec2/services/api_service.dart';

class UserController extends GetxController {
  ApiService apiService = ApiService();
  List userData = [];
  getData() async {
    var uData = await apiService.getUsersData();
    print(uData);
    userData = uData;

    update();
  }

  @override
  void onInit() {
    getData();
    print("calling on iinit");
    super.onInit();
  }

  // @override
  // void onReady() {
  //   print("calling on onReady");
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   print("calling on onClose");
  //   super.onClose();
  // }
}
