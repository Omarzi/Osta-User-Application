import '../../../../../utils/constants/exports.dart';

class CustomSendFromUser extends StatelessWidget {
  const CustomSendFromUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height / 8,
          width: width / 1.3,
          padding: EdgeInsets.all(OSizes.spaceBtwTexts2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(OSizes.borderRadiusLg * 2),
              bottomLeft: Radius.circular(OSizes.borderRadiusLg * 2),
              bottomRight: Radius.circular(OSizes.borderRadiusLg * 2),
            ),
            border: Border.all(
              color: OColors.blue.withOpacity(0.1),
              width: 1.5.w,
            ),
            color: OColors.bgContainerInMyOrder1,
          ),
          child: Text("Lorem Ipsum is simply a formal text, meaning that the purpose is the form, not the content"),
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
