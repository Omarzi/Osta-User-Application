import '../../../../../utils/constants/exports.dart';

class CustomTextFormFeild2 extends StatelessWidget {
  CustomTextFormFeild2({Key? key,required this.labelText,required this.hintText,required this.controller}) : super(key: key);
  TextEditingController controller =TextEditingController();
  String labelText,hintText;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      keyboardType: TextInputType.name,
      expands: false,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
        labelText: labelText,
        hintText: hintText,
        labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
        hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.grey2),
      ),
      validator: (value) => OFormatter.formatUserName(value),
    );
  }
}
