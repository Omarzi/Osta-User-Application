import '../../../../../utils/constants/exports.dart';

class CustomButtonToAdd extends StatelessWidget {
   CustomButtonToAdd({Key? key,required this.image,required this.textButton}) : super(key: key);
 String image,textButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image,width: 20.w),
        SizedBox(width: OSizes.spaceBtwTexts),
        Text(textButton,style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.blue),overflow: TextOverflow.ellipsis)
      ],
    );
  }
}
