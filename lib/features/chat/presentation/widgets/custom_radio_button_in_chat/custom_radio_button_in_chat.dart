import 'package:osta_app/features/chat/presentation/widgets/custom_radio_button_in_chat/custom_text_form_field_in_chat/custom_data_in_electronic_wallet.dart';
import '../../../../../utils/constants/exports.dart';

class CustomRadioButtonInChat extends StatefulWidget {
  CustomRadioButtonInChat({Key? key}) : super(key: key);

  @override
  State<CustomRadioButtonInChat> createState() =>
      _CustomRadioButtonInChatState();
}

class _CustomRadioButtonInChatState extends State<CustomRadioButtonInChat> {
  bool creditCard = false;
  bool wallet = false;
  int selectedOption = 1; // Default selected option
  bool electronicWallets = false;

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
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
            text: "Cash",
            image: OImages.cash,
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
                    context.pop();
                    showAlertDialogForWallet();
                  });
                },
              ),
            ),
            text: "Wallet",
            image: OImages.wallet,
          ),
         CustomSpecificRadioButtonInChat(
            listTile: ListTile(
              leading: Radio(
                activeColor: OColors.primary,
                value:3,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption =value!;

                  });
                },
              ),
            ),
            text: "Credit cards",
            image: OImages.iconCard,
          ),
          selectedOption==3?CustomDataInCreditCard():SizedBox(),
          CustomSpecificRadioButtonInChat(
            listTile: ListTile(
              leading: Radio(
                activeColor: OColors.primary,
                value:4,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption =value!;
                    print(selectedOption);
                  });
                },
              ),
            ),
            text: "Electronic wallets",
            image: OImages.iconMobile,
          ),
          selectedOption==4?CustomDataInElctronicWallet():SizedBox(),
          CustomSpecificRadioButtonInChat(
            listTile: ListTile(
              leading: Radio(
                activeColor: OColors.primary,
                value:5,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption =value!;
                    print(selectedOption);
                  });
                },
              ),
            ),
            text: "Apple Pay",
            image: OImages.applePay,
          ),

        ],
      )
       ;
  }
  void showAlertDialogForWallet() {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return   CustomAlertDialogInChat(
            text: "There is not enough balance in your wallet",
            dottedColor: OColors.primary,
            bgCircle: OColors.warning2,
            image: OImages.close,
          );
        }
    );
  }
}
