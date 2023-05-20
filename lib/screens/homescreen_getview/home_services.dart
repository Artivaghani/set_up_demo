import 'package:flutter_mnroi/api_manager/api_utils.dart';
import 'package:flutter_mnroi/utils/config_packages.dart';

import 'home_model.dart';

// class CallApi extends GetConnect {
//   Future<AllData> fetchData() async {
//     final response = await get(ApiUtils.postsURL);
//     if (response.status.hasError) {
//       return Future.error(response.statusText.toString());
//     } else {
//       return AllData.fromJson(response.body);
//     }
//   }
// }

class ApiProvider extends GetConnect {
  Future<List<MakeUpData>> fetchProducts() async {
    final response = await get(ApiUtils.postsURLGetView);
    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      Get.back();
      return makeUpDataFromJson(response.bodyString!);
    }
  }
}
