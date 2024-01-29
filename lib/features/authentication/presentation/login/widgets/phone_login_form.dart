import 'package:osta_app/utils/constants/exports.dart';

class PhoneOLoginForm extends StatefulWidget {
  const PhoneOLoginForm({super.key});

  @override
  State<PhoneOLoginForm> createState() => _PhoneOLoginFormState();
}

class _PhoneOLoginFormState extends State<PhoneOLoginForm> {
  bool isShowed = true;
  String selectedCountryCode = '+20';
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> phoneLoginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: phoneLoginFormKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: OSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Phone Number
            TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'phoneNumber'.tr(context),
                suffixIcon: const Icon(Iconsax.call),
                prefixIcon: CustomPopupMenu(textWidget: Text(selectedCountryCode.toString()), onSelected: (String value) => setState(() => selectedCountryCode = value)),
              ),
              validator: (value) => OFormatter.formatPhoneNumber(value, selectedCountryCode),
            ),

            /// Make Some Space
            SizedBox(height: OSizes.spaceBtwInputFields / 2),

            /// Make Some Space
            SizedBox(height: OSizes.spaceBtwSections),

            /// Sign In Button
            CustomButton(buttonText: "singIn".tr(context), onPressed: () {if(phoneLoginFormKey.currentState!.validate()) {context.pushNamed(ORoutesName.allDataLoginRoute);}}),
          ],
        ),
      ),
    );
  }
}