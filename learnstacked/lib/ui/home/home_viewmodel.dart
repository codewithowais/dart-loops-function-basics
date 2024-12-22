import 'package:learnstacked/app/app.locator.dart';
import 'package:learnstacked/services/abc_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  String title = "codewithowais";
  final abcService = locator<AbcService>(); // => 1 => 1
  final abcServiceWithOutSingleton = AbcService(); // => 1 => 0
}
