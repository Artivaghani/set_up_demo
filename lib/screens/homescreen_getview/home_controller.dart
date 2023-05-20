import 'package:flutter_mnroi/screens/homescreen_getview/home_model.dart';
import 'package:flutter_mnroi/screens/homescreen_getview/home_services.dart';
import 'package:flutter_mnroi/utils/config_packages.dart';

class HomeGetViewController extends GetxController with StateMixin<List<MakeUpData>> {
  ApiProvider callApi = ApiProvider();

  //  CallApi callApi = CallApi();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    AppCommonWidgets.checkInternet().then((value) {
      callApi.fetchProducts().then((response) {
        change(response, status: RxStatus.success());
      }).onError((error, stackTrace) {
        change(null, status: RxStatus.error(error.toString()));
      });
    });
  }
}
