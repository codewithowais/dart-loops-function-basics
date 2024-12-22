import 'package:learnstackedsec2/services/abc_service.dart';
import 'package:learnstackedsec2/ui/home/home_view.dart';
import 'package:learnstackedsec2/ui/profile/profile_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: ProfileView),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: AbcService)
  ],
)
class App {}
