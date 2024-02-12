import 'package:osta_app/features/chat/presentation/widgets/custom_pinput/custom_pinput.dart';
import '../../../../../utils/constants/exports.dart';

class CustomBottomSheetInElectronicWallet extends StatefulWidget {
  const CustomBottomSheetInElectronicWallet({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheetInElectronicWallet> createState() => _CustomBottomSheetInElectronicWalletState();
}

class _CustomBottomSheetInElectronicWalletState extends State<CustomBottomSheetInElectronicWallet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.padding,right: OSizes.padding),
      child: Column(
        children: [
           Row(mainAxisAlignment: MainAxisAlignment.end,
             children: [
               CustomCloseButton()
             ],
           ),
          Text("Electronic wallets",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),
          ),
          SizedBox(height: OSizes.spaceBtwItems,),
          Text("Enter the code sent to your mobile phone",
          style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: OSizes.spaceBtwItems * 2,),
          CustomPinPut(),
          SizedBox(height: OSizes.spaceBtwItems,),
          CustomButton2(text: "Sure", onTap: (){
            context.pop();
            showAlertDialogForElectronicWallet();
          },
          width: MediaQuery.of(context).size.width/1.2,
          height: MediaQuery.of(context).size.width/7,
          )
        ],
      ),
    );
  }

  void showAlertDialogForElectronicWallet() {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return   CustomAlertDialogInChat(
            // text: "There is no e-wallet for this number",
            text: "There is not enough balance in your wallet",
            dottedColor: OColors.primary,
            bgCircle: OColors.warning2,
            image: OImages.close,
          );

          //   CustomAlertDialogInChat(text: "Payment was made from your e-wallet",
          //     dottedColor: OColors.warning3,
          //     bgCircle: OColors.primary,
          //     image: OImages.correct,
          // );
        }
    );
  }
}
