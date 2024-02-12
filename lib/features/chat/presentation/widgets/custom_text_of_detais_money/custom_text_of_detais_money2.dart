import '../../../../../utils/constants/exports.dart';

class CustomTextOfDetailsMoney2 extends StatelessWidget {
  CustomTextOfDetailsMoney2({Key? key,required this.type,required this.price}) : super(key: key);
  String type,price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(type,style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.iconCall),),
            Text("(Including tax added)",style: Theme.of(context).textTheme.bodySmall!.copyWith(color: OColors.iconCall),),
          ],
        ),
        Spacer(),
        Text(price,style: Theme.of(context).textTheme.titleLarge,),
      ],
    );
  }
}
