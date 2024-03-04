import '../../../../../utils/constants/exports.dart';

class BottomSheetInMyOrder extends StatelessWidget {
  const BottomSheetInMyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding:  EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.spaceBtwTexts2,right: OSizes.spaceBtwTexts2),
        child: Column(
          children: [
            CustomTextOfDetailsMoney(type: "Order value", price: "5.250 EGB"),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: OSizes.spaceBtwTexts2 * 1.5),
              child: const CustomDotsDivider(),
            ),
            CustomTextOfDetailsMoney(type: "Tax", price: "5 EGB"),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: OSizes.spaceBtwTexts2 * 1.5),
              child: const CustomDotsDivider(),
            ),
            CustomTextOfDetailsMoney(type: "Delivery value", price: "20 EGB"),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: OSizes.spaceBtwTexts2 * 1.5),
              child: const CustomDotsDivider(),
            ),
            CustomTextOfDetailsMoney(type: "Discount", price: "-50 EGB"),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: OSizes.spaceBtwTexts2 * 1.5),
              child: const CustomDotsDivider(),
            ),
            CustomTextOfDetailsMoney2(type: "Total ", price: "5.255 EGB"),
          ],
        ),
      ),
    );
  }
}
