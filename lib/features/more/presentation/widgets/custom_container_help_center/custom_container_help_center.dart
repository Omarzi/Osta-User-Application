import '../../../../../utils/constants/exports.dart';

class CustomContainerHelpCenter extends StatelessWidget {
   CustomContainerHelpCenter({Key? key,required this.textHelpCenter}) : super(key: key);
    String textHelpCenter;
  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: OSizes.spaceBtwTexts2),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(OSizes.spaceBtwItems),
          decoration: BoxDecoration(
            color: OColors.white,
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
            border: Border.all(
              width: 0.5.w,
              color: OColors.grey),
          ),
          child: Row(
            children: [
              Text(textHelpCenter,style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
              Spacer(),
              Icon(isEnglish ? Icons.arrow_forward_ios : Icons.arrow_back_ios,size: 23.sp),
            ],
          ),
        ),
      ),
    );
  }
}
