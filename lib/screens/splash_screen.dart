import '../../utils/config_packages.dart';
import 'homescreen_future/home_screen.dart';
import 'homescreen_getview/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  Future<double> whenNotZero(Stream<double> source) async {
    await for (double value in source) {
      if (value > 0) {
        return value;
      }
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: whenNotZero(
          Stream<double>.periodic(const Duration(milliseconds: 50), (x) => Get.height),
        ),
        builder: (BuildContext context, AsyncSnapshot<double> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data! > 0) {
              // print(snapshot.data.toString());
              // print(AppDimen.screenHeight);
              Future.delayed(
                const Duration(seconds: 3),
                () => Get.off(HomeScreen()),
              );
              return splashData();
            } else {
              return splashData();
            }
          } else {
            return splashData();
          }
        });
  }

  splashData() => Scaffold(
        body: Container(
          height: AppDimen.screenHeight,
          width: AppDimen.screenWidth,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AssetsPathString.bg))),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(AppDimen.dimen80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetsPathString.rainLogo,
                  ),
                  SizedBox(height: AppDimen.dimen20),
                  Text(AppString.appname, style: Get.theme.textTheme.headlineLarge),
                ],
              ),
            ),
          ),
        ),
      );
}
