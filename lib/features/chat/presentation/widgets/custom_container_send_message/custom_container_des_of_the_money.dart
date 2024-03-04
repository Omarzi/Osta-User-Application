import '../../../../../utils/constants/exports.dart';

class CustomContainerDesOfTheMoney extends StatelessWidget {
  const CustomContainerDesOfTheMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBetweenIcon),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 150.h,
            width: 280.w,
            padding: EdgeInsets.all(OSizes.sm),
            decoration: BoxDecoration(
                border: Border.all(
                  color: OColors.grey,
                ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(OSizes.cardRadiusMd),
                bottomLeft: Radius.circular(OSizes.cardRadiusMd),
                bottomRight: Radius.circular(OSizes.cardRadiusMd),
              )
            ),
            child: Column(
              children: [
                CustomTextOfDetailsMoney(type: "The Price",price: "100 EGB"),
                SizedBox(height: OSizes.spaceBtwTexts2,),
                CustomTextOfDetailsMoney(type: "Osta fees",price: "20 EGB"),
                SizedBox(height: OSizes.spaceBtwTexts2,),
                CustomTextOfDetailsMoney(type: "Tax",price: "5 EGB"),
                SizedBox(height: OSizes.spaceBtwTexts2,),
                CustomTextOfDetailsMoney2(type: "Total", price: "125 EGB")

              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: OSizes.spaceBtwItems,right: OSizes.spaceBtwItems,top:OSizes.spaceBtwTexts,bottom: OSizes.spaceBtwSections),
            child: Text("4:30PM",style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OColors.grey2)),
          ),
        ],
      ),
    );
  }
}
