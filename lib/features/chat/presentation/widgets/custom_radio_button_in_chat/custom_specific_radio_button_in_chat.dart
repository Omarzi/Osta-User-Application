import '../../../../../utils/constants/exports.dart';

class CustomSpecificRadioButtonInChat extends StatefulWidget {
  CustomSpecificRadioButtonInChat({Key? key,required this.image,required this.text,required this.value}) : super(key: key);
  String image,text;
  int value;

  @override
  State<CustomSpecificRadioButtonInChat> createState() => _CustomSpecificRadioButtonState();
}

class _CustomSpecificRadioButtonState extends State<CustomSpecificRadioButtonInChat> {
  int selectedOption = 4;

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Container(
        height: 65.h,
        padding: EdgeInsets.all(OSizes.sm),
        decoration: BoxDecoration(
          border: Border.all(
            color: OColors.grey,
            width: 1.w
          ),
            borderRadius: BorderRadius.circular(10.r),
            color: OColors.light
        ),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                leading: Radio(
                  activeColor: OColors.primary,
                  value:widget.value,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = widget.value!;
                    });
                  },
                ),
              ),
            ),
            Row(
              children: [
                Text("${widget.text}",
                style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(width: OSizes.spaceBtwItems,),
                Image.asset("${widget.image}"),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
