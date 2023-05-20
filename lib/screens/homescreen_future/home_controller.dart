import 'package:flutter_mnroi/api_manager/api_utils.dart';
import 'package:flutter_mnroi/screens/homescreen_future/home_model.dart';
import 'package:flutter_mnroi/utils/config_packages.dart';

import '../../api_manager/api_manager.dart';

class HomeFutureController extends GetxController {
  Future<HomeData> callApi() async {
    Map<String, dynamic> response = await ApiManager.callGet(
      ApiUtils.postsURLFuture,
    );
    return HomeData.fromJson(response);
  }
}
