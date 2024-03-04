import '../../../../../utils/constants/exports.dart';

class CustomBottomSheetForRechargeBalance2 extends StatefulWidget {
  const CustomBottomSheetForRechargeBalance2({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheetForRechargeBalance2> createState() => _CustomBottomSheetForRechargeBalance2State();
}

class _CustomBottomSheetForRechargeBalance2State extends State<CustomBottomSheetForRechargeBalance2> {
  TextEditingController controller = TextEditingController();
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height / 2.6,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems,vertical: OSizes.spaceBtwTexts2),
        child: Column(
          children: [
            const CustomCloseButton(),
            Text("Recharge the balance",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
            SizedBox(height: OSizes.spaceBtwTexts2),
            const Text("Choose payment method"),
            SizedBox(height: OSizes.spaceBtwTexts2),
            CustomSpecificRadioButtonInChat(
              listTile: ListTile(
                leading: Radio(
                  activeColor: OColors.primary,
                  value:1,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption =value!;
                      print(selectedOption);
                    });
                  },
                ),
              ),
              text: "Credit cards",
              image: OImages.iconCard,
            ),
            CustomSpecificRadioButtonInChat(
              listTile: ListTile(
                leading: Radio(
                  activeColor: OColors.primary,
                  value:2,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption =value!;
                    });
                  },
                ),
              ),
              text: "Electronic wallets",
              image: OImages.iconMobile,
            ),
            const Spacer(),
            CustomButton2(text: "Confirmation", onTap: (){
              context.pop();
           selectedOption == 1? showBottomSheetForCreditCard():selectedOption == 2? showBottomSheetForElectronicWallet():context.pop();
            },height: OSizes.imageSize * 1.4,width: width)
          ],
        ),
      ),
    );
  }
  void showBottomSheetForCreditCard() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(OSizes.productImageRadius),
                topRight: Radius.circular(OSizes.productImageRadius))),
        showDragHandle: true,
        // isScrollControlled: true,
        context: context,
        builder: (context) {
          return const CustomBottomSheetForCreditCard();
        });
  }
  void showBottomSheetForElectronicWallet() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(OSizes.productImageRadius),
                topRight: Radius.circular(OSizes.productImageRadius))),
        showDragHandle: true,
        // isScrollControlled: true,
        context: context,
        builder: (context) {
          return const CustomBottomSheetForElectronicWallet2();
        });
  }

}
