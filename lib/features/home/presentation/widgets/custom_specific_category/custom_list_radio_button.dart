
import '../../../../../utils/constants/exports.dart';

class CustomListRadioButton extends StatefulWidget {
  CustomListRadioButton({Key? key}) : super(key: key);

  @override
  State<CustomListRadioButton> createState() => _CustomListRadioButtonState();
}

class _CustomListRadioButtonState extends State<CustomListRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSpecificRadioButton(title: '20 + fairy', offer: "30 day warranty", value: 1),
        SizedBox(height: 10.h,),
        CustomSpecificRadioButton(title: '50 + fairy', offer: "60 day warranty", value: 2),
        SizedBox(height: 10.h,),
        CustomSpecificRadioButton(title: '70 + fairy', offer: "90 day warranty", value: 3),
      ],
    );
  }
}
