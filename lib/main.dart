import 'package:get_storage/get_storage.dart';

import 'utils/config_packages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appname,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      // initialBinding: HomeBinding(),
      themeMode: StorageHelper().getTheme == null
          ? ThemeMode.system
          : (StorageHelper().getTheme ?? Get.isDarkMode)
              ? ThemeMode.dark
              : ThemeMode.light,
      builder: (context, child) {
        return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1), child: child!);
      },
      home: const SplashScreen(),
    );
  }
}
