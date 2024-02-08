import '../../../../../../utils/constants/exports.dart';
GlobalKey<FormState> allDataCreditCardFormKey = GlobalKey<FormState>();

class CustomDataInElctronicWallet extends StatefulWidget {
  CustomDataInElctronicWallet({Key? key}) : super(key: key);

  @override
  State<CustomDataInElctronicWallet> createState() => _CustomDataInElctronicWalletState();
}

class _CustomDataInElctronicWalletState extends State<CustomDataInElctronicWallet> {
  String selectedCountryCode = '+20';

  TextEditingController phoneController = TextEditingController();

  GlobalKey<FormState> phoneLoginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: phoneLoginFormKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0),
        child: Column(
          children: [
            /// Phone Number
            TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'phoneNumber'.tr(context),
                labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
                hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
                prefixIcon: CustomPopupMenu(textWidget: Text(selectedCountryCode.toString()), onSelected: (String value) => setState(() => selectedCountryCode = value)),
              ),
              validator: (value) => OFormatter.formatPhoneNumber(value, selectedCountryCode),
            ),

            /// Make Some Space
           SizedBox(height: 10.h,),

          ],
        ),
      ),
    );
  }
}
