import '../utils/config_packages.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({Key? key, this.title, this.leading, this.elevation = 0.0, this.refresh, this.isRefresh = true}) : super(key: key);

  final Widget? title;
  final Widget? leading;
  final double elevation;
  final VoidCallback? refresh;
  final bool isRefresh;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: leading,
        // GestureDetector(
        //     onTap: () => Get.back(),
        //     child: Icon(
        //       Icons.arrow_back,
        //       color: Theme.of(context).iconTheme.color,
        //     )),
        title: title,
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.headline1,
        actions: [
          Visibility(
              visible: isRefresh,
              child: GestureDetector(
                onTap: refresh,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: AppDimen.dimen10, vertical: AppDimen.dimen16),
                  width: AppDimen.dimen40,
                  decoration: BoxDecoration(color: Get.theme.scaffoldBackgroundColor, borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.arrowsRotate,
                      color: Get.theme.primaryColor,
                      size: AppDimen.dimen22,
                    ),
                  ),
                ),
              ))
        ]);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
