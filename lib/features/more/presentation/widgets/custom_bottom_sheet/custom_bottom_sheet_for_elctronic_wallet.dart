import 'package:osta_app/features/chat/presentation/widgets/custom_pinput/custom_pinput.dart';
import 'package:osta_app/features/chat/presentation/widgets/custom_radio_button_in_chat/custom_text_form_field_in_chat/custom_data_in_electronic_wallet.dart';
import 'package:osta_app/features/more/presentation/widgets/custom_bottom_sheet/custom_bottom_sheet_for_recharge_balance2.dart';
import '../../../../../utils/constants/exports.dart';

class CustomBottomSheetForElectronicWallet2 extends StatefulWidget {
  CustomBottomSheetForElectronicWallet2({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheetForElectronicWallet2> createState() =>
      _CustomBottomSheetForElectronicWalletState();
}

class _CustomBottomSheetForElectronicWalletState
    extends State<CustomBottomSheetForElectronicWallet2> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 2.5,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: OSizes.spaceBtwItems, vertical: OSizes.spaceBtwTexts2),
        child: Column(
          children: [
            CustomCloseButton(),
            Text("Electronic wallets",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: OColors.blue)),
            SizedBox(height: OSizes.spaceBtwTexts2),
            Text("Enter the code sent to your mobile phone"),
            SizedBox(height: OSizes.spaceBtwTexts2),
            CustomPinPut(),
            Spacer(),
            CustomButton2(
                text: "Confirmtion",
                onTap: () {
                  context.pop();
                  showAlertDialogForElectronicWallet();
                },
                height: OSizes.imageSize * 1.5,
                width: width)
          ],
        ),
      ),
    );
  }

  void showAlertDialogForElectronicWallet() {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return   CustomAlertDialogInChat(
            haveTitle: false,
              text: "Payment was made successfully from your e-wallet",
              image: OImages.correct,
              dottedColor: OColors.warning3,
              bgCircle: OColors.primary);
        }
    );
  }
}
