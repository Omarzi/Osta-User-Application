import '../../../utils/constants/exports.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({Key? key,required this.hintText,required this.controller}) : super(key: key);
  String hintText;
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 7,
      decoration: InputDecoration(
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
