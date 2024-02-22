import 'package:osta_app/features/more/presentation/widgets/custom_bottom_sheet/custom_bottom_sheet_for_recharge_balance2.dart';
import '../../../../../utils/constants/exports.dart';

class CustomBottomSheetForCreditCard extends StatefulWidget {
  CustomBottomSheetForCreditCard({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheetForCreditCard> createState() =>
      _CustomBottomSheetForCreditCardState();
}

class _CustomBottomSheetForCreditCardState
    extends State<CustomBottomSheetForCreditCard> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 1,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: OSizes.spaceBtwItems, vertical: OSizes.spaceBtwTexts2),
        child: Column(
          children: [
            CustomCloseButton(),
            Text("Credit cards",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: OColors.blue)),
            SizedBox(height: OSizes.spaceBtwTexts2),
            Text("Enter payment card information"),
            SizedBox(height: OSizes.spaceBtwTexts2),
            CustomDataInCreditCard(),
            Spacer(),
            CustomButton2(
                text: "Confirmtion",
                onTap: () {
                  context.pop();
                  showAlertDialogForCreditCard2();
                },
                height: OSizes.imageSize * 1.2,
                width: width)
          ],
        ),
      ),
    );
  }
  void showAlertDialogForCreditCard() {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return   CustomAlertDialogInChat(
            haveTitle: false,
              text: "Payment has been completed successfully and your wallet has been shipped",
              image: OImages.correct,
              dottedColor: OColors.warning3,
              bgCircle: OColors.primary);
        }
    );
  }
  void showAlertDialogForCreditCard2() {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return   CustomAlertDialogInChat(
            haveTitle: false,
            text: "There is not enough balance in your electronic wallet",
            //  text: "There is no electronic wallet for this number",
              image: OImages.close,
              dottedColor: OColors.primary,
              bgCircle: OColors.warning3);
        }
    );
  }
}
