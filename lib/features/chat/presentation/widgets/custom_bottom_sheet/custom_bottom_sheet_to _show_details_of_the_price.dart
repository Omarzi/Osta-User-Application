import '../../../../../utils/constants/exports.dart';

class CustomBottomSheetToShowDetailsOfThePrice extends StatefulWidget {
  const CustomBottomSheetToShowDetailsOfThePrice({Key? key}) : super(key: key);
  @override
  State<CustomBottomSheetToShowDetailsOfThePrice> createState() => _CustomBottomSheetToShowDetailsOfThePriceState();
}

class _CustomBottomSheetToShowDetailsOfThePriceState extends State<CustomBottomSheetToShowDetailsOfThePrice> {
  @override

  Widget build(BuildContext context) {
    return SizedBox(
      height: 420.h,
      child: Padding(
        padding:  EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.spaceBtwItems,right: OSizes.spaceBtwItems),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context,index){
                    return CustomTextOfDetailsMoney(
                        type: OConstants.typeTextForBottomSheetInDetailsPrice[index],
                        price: OConstants.priceTextForBottomSheetInDetailsPrice[index]);
                  },
                  separatorBuilder: (context ,index){
                    return Padding(
                      padding:  EdgeInsets.symmetric(vertical: OSizes.spaceBtwItems),
                      child: const CustomDotsDivider(),);
                  },
                  itemCount:OConstants.typeTextForBottomSheetInDetailsPrice.length),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: OSizes.spaceBtwItems),
              child: const CustomDotsDivider(),
            ),
            CustomTextOfDetailsMoney2(type: "Total", price: "275 EGB"),
            SizedBox(height: OSizes.spaceBtwItems * 2),
            CustomButtomNavigationInChat(),
          ],
        ),
      ),
    );
  }
}
