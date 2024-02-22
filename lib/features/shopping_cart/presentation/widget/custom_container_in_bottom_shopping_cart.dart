import '../../../../utils/constants/exports.dart';

class CustomContainerInBottomShoppingCart extends StatelessWidget {
  const CustomContainerInBottomShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.spaceBtwTexts2,right: OSizes.spaceBtwTexts2),
      decoration: BoxDecoration(
        color: OColors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(OSizes.borderRadiusLg * 2),topRight: Radius.circular(OSizes.borderRadiusLg * 2)),
        boxShadow: [
          BoxShadow(
            color: OColors.grey.withOpacity(0.12),
            blurRadius: 1.r,
            offset: const Offset(0, 10),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          CustomTextOfDetailsMoney(type: "Order value", price: "5.250 EGB"),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: OSizes.spaceBtwTexts2 * 1.5),
            child: CustomDotsDivider(),
          ),
          CustomTextOfDetailsMoney(type: "Tax", price: "5 EGB"),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: OSizes.spaceBtwTexts2 * 1.5),
            child: CustomDotsDivider(),
          ),
          CustomTextOfDetailsMoney(type: "Delivery value", price: "20 EGB"),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: OSizes.spaceBtwTexts2 * 1.5),
            child: CustomDotsDivider(),
          ),
          CustomTextOfDetailsMoney(type: "Discount", price: "-50 EGB"),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: OSizes.spaceBtwTexts2 * 1.5),
            child: CustomDotsDivider(),
          ),
          CustomTextOfDetailsMoney2(type: "Total ", price: "5.255 EGB"),
        ],
      ),
    );
  }
}
