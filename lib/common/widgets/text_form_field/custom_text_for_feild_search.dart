import '../../../utils/constants/exports.dart';

class CustomTextFormFieldSearch extends StatefulWidget {
   CustomTextFormFieldSearch({Key? key,required this.hintText,required this.suffixIcon, required this.suffixIconColor,required this.controller}) : super(key: key);
   String hintText;
   Widget suffixIcon;
   Color suffixIconColor;
   TextEditingController controller;
  @override
  State<CustomTextFormFieldSearch> createState() => _CustomTextFormFieldSearchState();
}

class _CustomTextFormFieldSearchState extends State<CustomTextFormFieldSearch> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.h,
      child: TextFormField(
        controller: widget.controller,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.grey2),
        decoration: InputDecoration(
          filled: true,
          fillColor: OColors.grey.withOpacity(0.5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg * 3),
            borderSide: const BorderSide(
              color: OColors.borderTextFormField,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg * 3),
            borderSide: const BorderSide(
              color: OColors.borderTextFormField,
            ),

          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg * 3),
            borderSide: const BorderSide(
              color: OColors.borderTextFormField,
            ),
          ),
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.grey2),
          suffixIcon: widget.suffixIcon,
          suffixIconColor: widget.suffixIconColor,
          contentPadding: EdgeInsets.only(left: OSizes.spaceBtwItems * 1.5, right: OSizes.spaceBtwItems / 2)
        ),
      ),
    );
  }
}
