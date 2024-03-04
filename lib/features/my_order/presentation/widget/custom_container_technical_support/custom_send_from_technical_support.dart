import '../../../../../utils/constants/exports.dart';

class CustomSendFromTechnicalSupport extends StatelessWidget {
  const CustomSendFromTechnicalSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 17.r,
              backgroundColor: OColors.textInMyOrder1,
              child: Image.asset(OImages.appLogoIcon,
                  width: 20.w),
            ),
          ],
        ),
        SizedBox(height: OSizes.spaceBtwTexts,),
        Container(
          height: height / 8,
          width: width / 1.3,
          padding: EdgeInsets.all(OSizes.spaceBtwTexts2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(OSizes.borderRadiusLg * 2),
              bottomLeft: Radius.circular(OSizes.borderRadiusLg * 2),
              bottomRight: Radius.circular(OSizes.borderRadiusLg * 2),
            ),
            border: Border.all(
              color: OColors.grey,
              width: 1.5.w,
            ),
          ),
          child: const Text("Lorem Ipsum is simply a formal text, meaning that the purpose is the form, not the content, and is used in the printing and publishing industries"),
        ),
        SizedBox(height: OSizes.spaceBtwTexts),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems * 1.5),
          child: Row(
            children: [
              Text("4:31PM",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.grey))
            ],
          ),
        )

      ],
    );
  }
}


