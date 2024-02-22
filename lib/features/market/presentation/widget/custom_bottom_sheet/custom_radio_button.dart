import 'package:osta_app/features/market/presentation/widget/custom_bottom_sheet/custom_specific_radio_button_in_category.dart';

import '../../../../../utils/constants/exports.dart';

class CustomRadioButtonInFilter extends StatefulWidget {
   CustomRadioButtonInFilter({Key? key}) : super(key: key);

  @override
  State<CustomRadioButtonInFilter> createState() => _CustomRadioButtonInFilterState();
}

class _CustomRadioButtonInFilterState extends State<CustomRadioButtonInFilter> {
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
            ), text: "Split air conditioner"),
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
            ), text: "Central air conditioner"),
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
            ), text: "Concealed air conditioner"),
        SizedBox(height: OSizes.spaceBtwTexts2),
        CustomSpecificRadioButtonInCategory(
            listTile: ListTile(
              leading: Radio(
                activeColor: OColors.primary,
                value:5,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption =value!;

                  });
                },
              ),
            ), text: "Cassette air conditioner"),
      ],
    );
  }
}
