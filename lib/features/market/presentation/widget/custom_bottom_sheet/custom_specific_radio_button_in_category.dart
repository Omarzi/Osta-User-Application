import '../../../../../utils/constants/exports.dart';

class CustomSpecificRadioButtonInCategory extends StatefulWidget {
   CustomSpecificRadioButtonInCategory({Key? key,required this.listTile, required this.text}) : super(key: key);
  Widget listTile;
  String text;
  @override
  State<CustomSpecificRadioButtonInCategory> createState() => _CustomSpecificRadioButtonInCategoryState();
}

class _CustomSpecificRadioButtonInCategoryState extends State<CustomSpecificRadioButtonInCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height/14,
        padding: EdgeInsets.only(left: OSizes.sm,right: OSizes.sm),
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
                child: widget.listTile
            ),
            Row(
              children: [
                Text(widget.text,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),

              ],
            ),
          ],
        )

    );
  }
}
