// import 'package:aismarttonemail/utils/config_packages.dart';

// class NativeAdsView extends StatelessWidget {
//   final String tag;
//   const NativeAdsView({super.key, required this.tag});

//   @override
//   Widget build(BuildContext context) {
//     return Visibility(
//       visible: AppConst.isAdShow,
//       child: GetBuilder(
//           init: NativeAdController(),
//           tag: tag,
//           builder: (controller) => controller.isAdLoad
//               ? Container(
//                   height: AppDimen.dimen100,
//                   alignment: Alignment.center,
//                   width: AppDimen.screenWidth,
//                   padding: EdgeInsets.only(
//                       left: AppDimen.dimen20,
//                       right: AppDimen.dimen20,
//                       top: AppDimen.dimen10),
//                   child: AdWidget(ad: controller.nativeAd!))
//               : const SizedBox()),
//     );
//   }
// }
