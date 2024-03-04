import '../../../../../utils/constants/exports.dart';

class CustomSpecificRadioButton extends StatefulWidget {
   CustomSpecificRadioButton({Key? key,required this.title,required this.offer,required this.value}) : super(key: key);
   String title,offer;
   int value;

   @override
  State<CustomSpecificRadioButton> createState() => _CustomSpecificRadioButtonState();
}

class _CustomSpecificRadioButtonState extends State<CustomSpecificRadioButton> {
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(right: 15.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: OColors.light),
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              title: Text(
                widget.title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: OColors.primary),
              ),
              leading: Radio(
                activeColor: OColors.primary,
                value:widget.value,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption =widget.value!;
                  });
                },
              ),
            ),
          ),
          Text(widget.offer),
        ],
      ),
    );
  }
}
