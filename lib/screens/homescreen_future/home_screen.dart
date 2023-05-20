import 'package:flutter_mnroi/screens/homescreen_future/home_controller.dart';
import 'package:flutter_mnroi/screens/homescreen_future/home_model.dart';
import 'package:flutter_mnroi/utils/config_packages.dart';

import 'homecardwidget.dart';

class HomeScreenFuture extends StatelessWidget {
  const HomeScreenFuture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeFutureController(),
        builder: (HomeFutureController controller) {
          return Scaffold(
            appBar: CommonAppBar(
                title: Text(AppString.dashBoard),
                refresh: () {
                  controller.update();
                }),
            body: FutureBuilder(
                future: AppCommonWidgets.commonCheckInternetNavigate(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return AppCommonWidgets.processIntegrator;
                  } else if (snapshot.hasData) {
                    return FutureBuilder<HomeData>(
                      future: controller.callApi(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return AppCommonWidgets.processIntegrator;
                        } else if (snapshot.hasData) {
                          return ListView.builder(
                            itemCount: snapshot.data!.data.length,
                            itemBuilder: (context, index) {
                              return HomeCardWidget3(index: index, data: snapshot.data);
                            },
                          );
                        } else {
                          return AppCommonWidgets.datanotfoundtext();
                        }
                      },
                    );
                  } else {
                    return SizedBox();
                  }
                }),
          );
        });
  }
}
