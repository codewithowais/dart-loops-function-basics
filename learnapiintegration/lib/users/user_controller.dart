import 'package:get/get.dart';
import 'package:learnapiintegration/models/users_model.dart';
import 'package:learnapiintegration/services/api_service.dart';

class UserController extends GetxController {
  ApiService apiService = ApiService();
  List<UsersModel> userDataList = [];

  getData() async {
    var usersData = await apiService.getUsersData();
    print("2046 ${usersData}");
    userDataList = usersData;
    update();
  }

  @override
  void onInit() {
    print("init is calling");
    getData();
    super.onInit();
  }

  @override
  void onReady() {
    print("ready is calling");
    super.onReady();
  }

  @override
  void onClose() {
    print("close is calling");
    super.onClose();
  }
}
