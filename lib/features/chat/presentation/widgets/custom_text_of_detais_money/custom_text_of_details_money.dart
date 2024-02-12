import '../../../../../utils/constants/exports.dart';

class CustomTextOfDetailsMoney extends StatelessWidget {
   CustomTextOfDetailsMoney({Key? key,required this.type,required this.price}) : super(key: key);
  String type,price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(type,style: Theme.of(context).textTheme.titleSmall,),
        Spacer(),
        Text(price,style: Theme.of(context).textTheme.titleSmall,),
      ],
    );
  }
}
