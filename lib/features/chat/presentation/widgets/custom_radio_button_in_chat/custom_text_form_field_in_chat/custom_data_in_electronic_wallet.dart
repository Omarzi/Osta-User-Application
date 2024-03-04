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
    return Padding(
      padding:  EdgeInsets.only(top: OSizes.spaceBtwTexts,left: OSizes.spaceBtwTexts * 1.5,right: OSizes.spaceBtwTexts * 1.5),
      child: Form(
        key: phoneLoginFormKey,
        child: Column(
          children: [
            /// Phone Number
            CustomPhoneTextFormField(hintText: "100000000"),
            // TextFormField(
            //   controller: phoneController,
            //   keyboardType: TextInputType.phone,
            //   decoration: InputDecoration(
            //     labelText: 'phoneNumber'.tr(context),
            //     labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
            //     hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
            //     prefixIcon: CustomPopupMenu(textWidget: Text(selectedCountryCode.toString()), onSelected: (String value) => setState(() => selectedCountryCode = value)),
            //   ),
            //   validator: (value) => OFormatter.formatPhoneNumber(value, selectedCountryCode),
            // ),

            /// Make Some Space
           SizedBox(height: 10.h,),

          ],
        ),
      ),
    );
  }
}
