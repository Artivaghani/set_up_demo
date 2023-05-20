import 'package:flutter_mnroi/utils/config_packages.dart';

class Appdrawer extends StatelessWidget {
  Appdrawer({super.key});

  HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).backgroundColor,
      child: Padding(
        padding: EdgeInsets.all(AppDimen.dimen20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(AssetsPathString.rainLogo2)),
            Container(
              child: Text(AppString.myAc, style: Get.theme.textTheme.caption),
              padding: EdgeInsets.all(AppDimen.dimen12),
              margin: EdgeInsets.only(bottom: AppDimen.dimen12),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: Theme.of(context).colorScheme.onPrimary)),
            ),
            Text(
              homeController.isLoading ? '' : 'Name: ${homeController.getData!.name ?? ''}',
              style: Get.theme.textTheme.caption,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      '${AppString.theme}:',
                      style: Get.theme.textTheme.caption,
                    ),
                  ),
                  FlutterSwitch(
                    width: AppDimen.dimen75,
                    height: AppDimen.dimen35,
                    toggleSize: AppDimen.dimen26,
                    valueFontSize: 12.0,
                    value: homeController.status,
                    borderRadius: 20.0,
                    activeColor: AppColors.primaryColor,
                    inactiveColor: AppColors.textColor,
                    toggleBorder: Border.all(color: AppColors.primaryColor, width: 1.5),
                    onToggle: (val) {
                      if (val) {
                        Get.changeThemeMode(ThemeMode.dark);
                      } else {
                        Get.changeThemeMode(ThemeMode.light);
                      }
                      StorageHelper().saveTheme = val;
                      homeController.status = val;
                      homeController.update();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
