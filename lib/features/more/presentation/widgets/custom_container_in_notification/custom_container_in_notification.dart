import '../../../../../utils/constants/exports.dart';

class CustomContainerInNotification extends StatelessWidget {
  const CustomContainerInNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Card(
          child: Container(
            width: width,
            padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts2,vertical: OSizes.spaceBtwTexts),
            decoration: BoxDecoration(
              color: OColors.white,
              border: Border.all(
                width: 0.5.w,
                color: OColors.grey
              ),
              borderRadius: BorderRadius.circular(OSizes.borderRadiusLg)
            ),
            child: Column(
              children: [
               const Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   CustomCloseButton2(),
                 ],
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Image.asset(OImages.gift),
                    SizedBox(width: OSizes.spaceBtwTexts2,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(OSizes.spaceBtwTexts2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg * 2),
                            color: OColors.warning3,

                          ),
                          child: Center(
                            child: Text("Market requests",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
                          ),
                        ),
                        SizedBox(
                            width: width / 1.5,
                            child: Text("% of the order value is 30. You have a new discount coupon of a maximum of 50 pounds",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue))),
                        SizedBox(height: OSizes.spaceBtwTexts,),
                        Row(
                          children: [
                            Text("5847GQ54",
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.textgrey),),
                            SizedBox(width: OSizes.spaceBtwItems * 10.5),
                            Image.asset(OImages.copy)
                          ],
                        )

                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: OSizes.spaceBtwTexts),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts2),
          child: Text("25/09/2022 - 8:00PM",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.textgrey),),
        )
      ],
    );
  }
}
