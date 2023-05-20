import 'package:flutter_mnroi/screens/homescreen_getview/home_controller.dart';
import 'package:flutter_mnroi/utils/config_packages.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeGetViewController());
  }
}
