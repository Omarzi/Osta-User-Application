import '../../../../../utils/constants/exports.dart';

class CustomBottomSheetInChat extends StatefulWidget {
  const CustomBottomSheetInChat({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheetInChat> createState() => _CustomBottomSheetInChatState();
}

class _CustomBottomSheetInChatState extends State<CustomBottomSheetInChat> {
  @override
  Widget build(BuildContext context) {
    bool electronicWallet=false;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.only(left: OSizes.spaceBtwTexts,right: OSizes.spaceBtwTexts,top: OSizes.spaceBtwItems),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomCloseButton(),
            Text("Payment",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),
            ),
            Text("Choose payment method",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: OSizes.spaceBtwItems),
            Container(
              width: width / 2.5,
              padding: EdgeInsets.all(OSizes.spaceBtwTexts2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: OColors.bgCall
              ),
              child: const Center(
                child: Text("Total 125 pounds",
                  style: TextStyle(color: OColors.iconCall),
                ),
              ),
            ),
            SizedBox(height: OSizes.spaceBtwItems),
            const CustomRadioButtonInChat(),
            SizedBox(height: 10.h),
            CustomButton2(text: "Sure", onTap: (){
             // electronicWallet ==true?
              context.pop();
             showBottomSheet();
            },width: width / 1.2, height: OSizes.imageSize * 1.3)

          ],
        ),
      ),
    );
  }

  void showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const CustomBottomSheetInElectronicWallet();
        });
  }
}
