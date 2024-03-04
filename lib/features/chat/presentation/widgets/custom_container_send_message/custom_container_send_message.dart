import '../../../../../utils/constants/exports.dart';

class CustomContainerSendMessageDescriptionOfTheProblem extends StatelessWidget {
  const CustomContainerSendMessageDescriptionOfTheProblem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBetweenIcon),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350.h,
            width: 250.w,
            padding: EdgeInsets.all(OSizes.sm),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(OSizes.cardRadiusLg),
                bottomLeft: Radius.circular(OSizes.cardRadiusLg),
                topRight: Radius.circular(OSizes.cardRadiusLg),
              ),
              color: const Color(0xFFE8F8FF),
              border: Border.all(
                color: OColors.grey,
              ),
          
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Description of the problem",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                SizedBox(height: OSizes.spaceBtwTexts),
                Text("Lorem Ipsum is a method of writing texts in Graphic design is commonly used",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: OColors.grey2),
                ),
                SizedBox(height: OSizes.spaceBtwItems),
                Row(
                  children: [
                    Container(
                      height: 55.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(OSizes.cardRadiusMd),
                        color: OColors.grey,
                      ),
                      child: Image.asset(OImages.zoomIn),
          
                    ),
                    SizedBox(width: OSizes.spaceBtwItems),
                    Container(
                      height: 55.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(OSizes.cardRadiusMd),
                        color: OColors.grey,
                      ),
                      child: Image.asset(OImages.zoomIn),
          
                    ),
                    SizedBox(width: OSizes.spaceBtwItems),
                    Container(
                      height: 55.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(OSizes.cardRadiusMd),
                        color: OColors.grey,
                      ),
                      child: Image.asset(OImages.zoomIn),
          
                    ),
                  ],
                ),
                SizedBox(height: OSizes.spaceBtwTexts),
                Text("The Address",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                SizedBox(height: OSizes.spaceBtwTexts),
                Text("Home", style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(height: OSizes.spaceBtwTexts),
                Text("Next to the metro, Maadi 7 St", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: OColors.grey2)),
                SizedBox(height: OSizes.spaceBtwTexts),
                Text("payment method", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                SizedBox(height: OSizes.spaceBtwTexts),
                Text("cash", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: OColors.grey2)),
          
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: OSizes.spaceBtwItems,right: OSizes.spaceBtwItems,top:OSizes.spaceBtwTexts,bottom: OSizes.spaceBtwTexts),
            child: Text("4:30PM",style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OColors.grey2)),
          )
        ],
      ),
    );
  }
}
