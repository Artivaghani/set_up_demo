import '../../utils/config_packages.dart';
import 'home_model.dart';

class HomeCardWidget3 extends StatelessWidget {
  HomeCardWidget3({Key? key, this.data, required this.index}) : super(key: key);
  HomeData? data;
  int index;

  @override
  Widget build(BuildContext context) {
    var data1 = data!.data;
    var data2 = data!.source;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(12),
          decoration: AppDecoration.cardDecoration(),
          child: Row(
            children: [
              CircleAvatar(
                child: FlutterLogo(),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${AppString.id}: ${index + 1}', style: Theme.of(context).textTheme.bodyText2),
                        Text(data1[index].nation, style: commonText10600),
                      ],
                    ),
                    SizedBox(height: AppDimen.dimen4),
                    Text('${AppString.name}: ${data1[index].year}', style: Theme.of(context).textTheme.bodyText2),
                    SizedBox(height: AppDimen.dimen4),
                    Text('${AppString.desc}: ${data1[index].idNation}', maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.bodyText2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}