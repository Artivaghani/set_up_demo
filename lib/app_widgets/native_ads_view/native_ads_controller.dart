// import 'dart:io';

// import 'package:flutter_mnroi/utils/config_packages.dart';

// class NativeAdController extends GetxController {
//   bool isAdLoad = false;
//   NativeAd? nativeAd;
//   int loadCount = 0;

//   @override
//   void onInit() {
//     super.onInit();
//     getNativeAd();
//   }

//   getNativeAd() async {
//     nativeAd = NativeAd(
//       adUnitId: Platform.isAndroid ? AppConst.androidNativeAdID : AppConst.iosNativeAdID,
//       factoryId: 'listTile',
//       listener: NativeAdListener(
//         onAdLoaded: (ad) {
//           isAdLoad = true;
//           update();
//         },
//         onAdFailedToLoad: (ad, error) {
//           loadCount++;
//           if (loadCount <= 3) {
//             getNativeAd();
//           } else {
//             loadCount = 0;
//           }
//           ad.dispose();
//           isAdLoad = false;
//           update();
//         },
//         onAdClicked: (ad) {},
//         onAdImpression: (ad) {},
//         onAdClosed: (ad) {},
//         onAdOpened: (ad) {},
//         onAdWillDismissScreen: (ad) {},
//         onPaidEvent: (ad, valueMicros, precision, currencyCode) {},
//       ),
//       request: const AdRequest(),
//     );

//     await nativeAd!.load();
//   }
// }
