import '../../../../../utils/constants/exports.dart';

class CustomTextFormField1 extends StatelessWidget {
  CustomTextFormField1({Key? key,required this.hintText,required this.controller, this.suffixIcon, this.suffixIconColor, this.label, this.onTab,this.maxLines}) : super(key: key);
  TextEditingController controller =TextEditingController();
  String hintText;
  IconData? suffixIcon;
  Color? suffixIconColor;
  Widget? label;
  VoidCallback? onTab;
  int? maxLines;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      maxLines: maxLines,
      controller: controller,
      keyboardType: TextInputType.name,
      expands: false,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
          label: label,
          hintText: hintText,
          labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
          hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(color: OColors.grey2),
          suffixIcon: GestureDetector(
              onTap: onTab,
              child: Icon(suffixIcon,size: 25.sp,color: suffixIconColor,))
      ),
      validator: (value) => OFormatter.formatUserName(value),
    );
  }
}
