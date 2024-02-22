import '../../../../../utils/constants/exports.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.h,
      child: TextFormField(
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: OColors.grey2),
        decoration: InputDecoration(
          filled: true,
          fillColor: OColors.grey.withOpacity(0.5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg * 3),
            borderSide: BorderSide(
              color: OColors.borderTextFormField,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg * 3),
            borderSide: BorderSide(
              color: OColors.borderTextFormField,
            ),

          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg * 3),
            borderSide: BorderSide(
              color: OColors.borderTextFormField,
            ),
          ),
          hintText: "Search for product, dealer name",
          hintStyle: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: OColors.grey2),
          suffixIcon: const Icon(Icons.search),
          suffixIconColor: OColors.textInMyOrder1,
          contentPadding: EdgeInsets.only(left: OSizes.spaceBtwItems * 1.5, right: OSizes.spaceBtwItems / 2)
        ),
      ),
    );
  }
}
