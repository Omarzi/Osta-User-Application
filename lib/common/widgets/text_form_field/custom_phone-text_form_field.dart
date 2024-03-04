import 'package:osta_app/utils/constants/exports.dart';

class CustomPhoneTextFormField extends StatefulWidget {
   CustomPhoneTextFormField({super.key, required this.hintText});
  String hintText;

  @override
  State<CustomPhoneTextFormField> createState() => _CustomPhoneTextFormFieldState();
}

class _CustomPhoneTextFormFieldState extends State<CustomPhoneTextFormField> {
  bool isShowed = true;
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
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'phoneNumber'.tr(context),
                labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
                hintText: widget.hintText,
                hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.grey2),
                suffixIcon:  Icon(Iconsax.call,size: 25.sp),
                prefixIcon: CustomPopupMenu(textWidget: Text(selectedCountryCode.toString()), onSelected: (String value) => setState(() => selectedCountryCode = value)),
              ),
              validator: (value) => OFormatter.formatPhoneNumber(value, selectedCountryCode),
            ),

          ],
        ),
      ),
    );
  }
}