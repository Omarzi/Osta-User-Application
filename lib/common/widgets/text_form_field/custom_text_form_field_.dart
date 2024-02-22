import '../../../utils/constants/exports.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({Key? key,required this.hintText,required this.controller, this.label}) : super(key: key);
  String hintText;
   Widget? label;
   TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 7,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
          label: label,
          hintText: hintText,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: OColors.labelColor),
          enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(width: 0.9.w, color: OColors.grey),
            borderRadius: BorderRadius.circular(10.r),
          )),
    );
  }
}
