import '../../../../../utils/constants/exports.dart';

class CustomOrderStepper extends StatelessWidget {
   CustomOrderStepper({Key? key}) : super(key: key);
  bool isPreesed=false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      child: Expanded(
        flex: 5,
        child: Container(
          width: width,
          padding: EdgeInsets.symmetric(vertical: OSizes.spaceBtwItems,horizontal: OSizes.spaceBtwTexts2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
              color: OColors.white,
              border: Border.all(
                  width: 0.2.w,
                  color: OColors.grey3
              )
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: OSizes.spaceBtwItems * 2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sharp",style: Theme.of(context).textTheme.titleLarge),
                      SizedBox(height: OSizes.spaceBtwTexts),
                      Text("Number of products: 2",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.grey), overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ],
              ),
              SizedBox(height: OSizes.spaceBtwItems),
              Row(
                children: [
                  Container(
                    width: 75.w,
                    height: OSizes.imageSize ,
                    padding: EdgeInsets.all(OSizes.spaceBtwTexts),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(OSizes.borderRadiusLg * 2),
                     color:  isPreesed ? OColors.grey : OColors.primary
                    ),
                    child: Center(
                      child: Text("Approval is in progress",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.white,fontSize: 12.sp), overflow: TextOverflow.ellipsis),
                    ),
                  ),
                    Container(
                      width: 10.w,
                      height: 1,
                      color:isPreesed ? OColors.grey : OColors.primary
                    ),
                  Container(
                    height: OSizes.imageSize,
                    width: 75.w,
                    padding: EdgeInsets.all(OSizes.spaceBtwTexts),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(OSizes.borderRadiusLg * 2),
                        color:isPreesed ? OColors.primary: OColors.grey
                    ),
                    child: Center(
                      child: Text("Been approved",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white,fontSize: 12.sp), overflow: TextOverflow.ellipsis),
                    ),

                  ),
                  Container(
                      width: 10.w,
                      height: 1,
                      color:isPreesed ? OColors.primary: OColors.grey
                  ),
                  Container(
                    height: OSizes.imageSize,
                    width: 75.w,
                    padding: EdgeInsets.all(OSizes.spaceBtwTexts),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(OSizes.borderRadiusLg * 2),
                        color:isPreesed ? OColors.primary: OColors.grey

                    ),
                    child: Center(
                      child: Text("charged",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white,fontSize: 12.sp), overflow: TextOverflow.ellipsis),
                    ),

                  ),
                  Container(
                      width: 10.w,
                      height: 1,
                      color:isPreesed ? OColors.primary: OColors.grey
                  ),
                  Container(
                    height: OSizes.imageSize,
                    width: 75.w,
                    padding: EdgeInsets.all(OSizes.spaceBtwTexts),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(OSizes.borderRadiusLg * 2),
                        color:isPreesed ? OColors.primary: OColors.grey

                    ),
                    child: Center(
                      child: Text("Delivery done",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white,fontSize: 12.sp), overflow: TextOverflow.ellipsis),
                    ),

                  ),


                ],
              ),

            ],
          ),

        ),
      ),
    );
  }
}
