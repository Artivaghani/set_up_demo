import 'package:flutter_mnroi/screens/home_screen/home_card_view.dart';
import 'package:flutter_mnroi/screens/homescreen_getview/home_controller.dart';
import 'package:flutter_mnroi/utils/config_packages.dart';

import 'homecardwidget.dart';

class HomeScreenGetView extends GetView<HomeGetViewController> {
  const HomeScreenGetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
          title: Text(AppString.dashBoard),
          refresh: () {
            AppDialog.showProcess();
            controller.callApi.fetchProducts();
          }),
      body: Center(
        child: controller.obx(
          (data) {
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    HomeCardWidget2(index: index, data: data),
                  ],
                );
              },
            );
          },
          onError: (error) {
            debugPrint('error');
            return Text(error.toString());
          },
          onLoading: AppCommonWidgets.processIntegrator,
          onEmpty: Text('No Data Found'),
        ),
      ),
    );
  }
}
