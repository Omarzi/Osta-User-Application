import '../../../../../utils/constants/exports.dart';

class CustomSpecificRadioButtonInChat extends StatefulWidget {
  CustomSpecificRadioButtonInChat({Key? key,required this.listTile,required this.text,required this.image}) : super(key: key);
  Widget listTile;
  String text,image;

  @override
  State<CustomSpecificRadioButtonInChat> createState() => _CustomSpecificRadioButtonState();
}
class _CustomSpecificRadioButtonState extends State<CustomSpecificRadioButtonInChat> {

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Container(
        height: MediaQuery.of(context).size.height/14,
        padding: EdgeInsets.only(left: OSizes.sm,right: OSizes.sm),
        decoration: BoxDecoration(
          border: Border.all(
            color: OColors.grey,
            width: 1.w
          ),
            borderRadius: BorderRadius.circular(10.r),
            color: OColors.white
        ),
        child: Row(
          children: [
            Expanded(
              child: widget.listTile
            ),
            Row(
              children: [
                Text(widget.text,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(width: OSizes.spaceBtwItems,),
                Image.asset(widget.image),

              ],
            ),
          ],
        )

      ),
    );
  }
}
