import '../../../../../utils/constants/exports.dart';

class CustomContainerPaymentMethod extends StatelessWidget {
  const CustomContainerPaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems,vertical: OSizes.spaceBtwTexts2),
        height: height/11,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
          color: OColors.white,
          border: Border.all(
            width: 0.2.w,
            color: OColors.grey
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(OImages.creditCard),
                SizedBox(width: OSizes.spaceBtwTexts2),
                Text("payment method",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
              ],
            ),
            SizedBox(height: OSizes.spaceBtwTexts),
            Text("Cash",style: Theme.of(context).textTheme.titleLarge)
          ],
        ),
      ),
    );
  }
}
