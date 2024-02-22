import '../../../../../utils/constants/exports.dart';

class CustomContainerInNotifiction2 extends StatelessWidget {
  const CustomContainerInNotifiction2({Key? key}) : super(key: key);

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomCloseButton2(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(OImages.notification),
                    SizedBox(width: OSizes.spaceBtwTexts2,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: width / 1.5,
                            child: Text("The service provider has arrived",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue))),
                        SizedBox(height: OSizes.spaceBtwTexts,),
                        Row(
                          children: [
                            Text("Order Number : 1234",
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.textgrey),),
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
