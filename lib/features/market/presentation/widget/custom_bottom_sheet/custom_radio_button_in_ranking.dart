import 'package:osta_app/features/market/presentation/widget/custom_bottom_sheet/custom_specific_radio_button_in_category.dart';

import '../../../../../utils/constants/exports.dart';

class CustomRadioButtonInRanking extends StatefulWidget {
  CustomRadioButtonInRanking({Key? key}) : super(key: key);

  @override
  State<CustomRadioButtonInRanking> createState() => _CustomRadioButtonInFilterState();
}

class _CustomRadioButtonInFilterState extends State<CustomRadioButtonInRanking> {
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        CustomSpecificRadioButtonInCategory(
            listTile: ListTile(
              leading: Radio(
                activeColor: OColors.primary,
                value:1,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption =value!;

                  });
                },
              ),
            ), text: "All"),
        SizedBox(height: OSizes.spaceBtwTexts2),
        CustomSpecificRadioButtonInCategory(
            listTile: ListTile(
              leading: Radio(
                activeColor: OColors.primary,
                value:2,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption =value!;

                  });
                },
              ),
            ), text: "Newly added"),
        SizedBox(height: OSizes.spaceBtwTexts2),
        CustomSpecificRadioButtonInCategory(
            listTile: ListTile(
              leading: Radio(
                activeColor: OColors.primary,
                value:3,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption =value!;

                  });
                },
              ),
            ), text: "Of the highest price"),
        SizedBox(height: OSizes.spaceBtwTexts2),
        CustomSpecificRadioButtonInCategory(
            listTile: ListTile(
              leading: Radio(
                activeColor: OColors.primary,
                value:4,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption =value!;

                  });
                },
              ),
            ), text: "One of the lowest prices"),
      ],
    );
  }
}
