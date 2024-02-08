import 'package:osta_app/features/chat/presentation/widgets/custom_alert_dialog_in_chat/custom_alert_dialog_in_chat.dart';
import 'package:osta_app/features/chat/presentation/widgets/custom_radio_button_in_chat/custom_specific_radio_button_in_chat.dart';
import 'package:osta_app/features/chat/presentation/widgets/custom_radio_button_in_chat/custom_text_form_field_in_chat/custom_data_in_credit_card.dart';
import 'package:osta_app/features/chat/presentation/widgets/custom_radio_button_in_chat/custom_text_form_field_in_chat/custom_data_in_electronic_wallet.dart';
import '../../../../../utils/constants/exports.dart';

class CustomRadioButtonInChat extends StatefulWidget {
  CustomRadioButtonInChat({Key? key}) : super(key: key);

  @override
  State<CustomRadioButtonInChat> createState() => _CustomRadioButtonInChatState();
}

class _CustomRadioButtonInChatState extends State<CustomRadioButtonInChat> {
  bool creditCard =false;
  bool electronicWallets=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSpecificRadioButtonInChat(image: OImages.cash, text: "cash", value: 1),
        SizedBox(height: 10.h,),
        GestureDetector(
            onTap: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return CustomAlertDialogInChat();
                  }
              );
            },
            child: CustomSpecificRadioButtonInChat(image: OImages.wallet, text: "wallet", value: 2)),
        SizedBox(height: 10.h,),
        GestureDetector(
            onTap: (){
              setState(() {
                creditCard = !creditCard;

              });
            },
            child: CustomSpecificRadioButtonInChat(image: OImages.iconCard, text: "Credit cards", value: 3)),
        SizedBox(height: 10.h,),
        creditCard==true?CustomDataInCreditCard():SizedBox(),
        GestureDetector(
            onTap:() {
              setState(() {
                electronicWallets = !electronicWallets;
              });
            },
            child: CustomSpecificRadioButtonInChat(image: OImages.iconMobile, text: "Electronic wallets", value: 4)),
        SizedBox(height: 10.h,),
        electronicWallets==true?CustomDataInElctronicWallet():SizedBox(),

        CustomSpecificRadioButtonInChat(image: OImages.applePay, text: "Apple Pay", value: 5),
      ],
    );
  }

}
