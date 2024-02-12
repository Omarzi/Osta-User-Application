import '../../../../../utils/constants/exports.dart';

class CustomTextFormFeildINBotttomSheetPayment extends StatelessWidget {
   CustomTextFormFeildINBotttomSheetPayment({Key? key,required this.labelText,required this.controller}) : super(key: key);
    TextEditingController controller =TextEditingController();
    String labelText;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      keyboardType: TextInputType.name,
      expands: false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
        hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
      ),
      validator: (value) => OFormatter.formatUserName(value),
    );
  }
}
