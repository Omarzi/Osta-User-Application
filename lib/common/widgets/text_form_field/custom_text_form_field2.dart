import '../../../../../utils/constants/exports.dart';

class CustomTextFormField2 extends StatelessWidget {
  CustomTextFormField2({Key? key,required this.textEditingController,required this.labelText, this.suffixIcon}) : super(key: key);

  TextEditingController textEditingController=TextEditingController();
  String labelText;
  Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: OColors.grey2),
        suffixIcon: suffixIcon,
      ),
      style: const TextStyle(color: OColors.primary),
    );
  }
}
