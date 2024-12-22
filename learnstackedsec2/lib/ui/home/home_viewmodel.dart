import 'package:learnstackedsec2/app/app.locator.dart';
import 'package:learnstackedsec2/services/abc_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  String title = "Codewithowais";
  int counter = 0;
  final counterService = locator<AbcService>();
  final counterServiceWithOutSingleton = AbcService();

  addValue() {
    counterService.addValue();
    rebuildUi();
  }

  subtractValue() {
    counterService.subtractValue();
    rebuildUi();
  }
}
