import '../../utils/config_packages.dart';
import 'home_model.dart';

class HomeCardWidget2 extends StatelessWidget {
  HomeCardWidget2({Key? key, required this.data, required this.index}) : super(key: key);
  List<MakeUpData> data;
  int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(12),
          decoration: AppDecoration.cardDecoration(),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(data[index].imageLink ?? ''),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${AppString.id}: ${data[index].id}', style: Theme.of(context).textTheme.bodyText2),
                        Text(data[index].createdAt.toString(), style: commonText10600),
                      ],
                    ),
                    SizedBox(height: AppDimen.dimen4),
                    Text('${AppString.name}: ${data[index].name}', style: Theme.of(context).textTheme.bodyText2),
                    SizedBox(height: AppDimen.dimen4),
                    Text('${AppString.desc}: ${data[index].category}', maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.bodyText2),
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