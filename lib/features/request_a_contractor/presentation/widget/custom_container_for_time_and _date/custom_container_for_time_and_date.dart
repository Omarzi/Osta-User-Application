import 'package:osta_app/utils/constants/exports.dart';

class CustomContainerForTimeAndDate extends StatefulWidget {
  const CustomContainerForTimeAndDate({Key? key}) : super(key: key);

  @override
  State<CustomContainerForTimeAndDate> createState() => _CustomContainerForTimeAndDateState();
}

class _CustomContainerForTimeAndDateState extends State<CustomContainerForTimeAndDate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/11,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
        border: Border.all(
          width: 0.8.w,
          color: OColors.grey
        )
      ),
      padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts2),
      child: Center(
        child: Row(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("The appropriate time and date for communication",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue,fontSize: 13),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts),
                  child: Text("17/03/2022 - 3:00 PM",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color: OColors.grey2),
                  ),
                )
              ],
            ),
            Spacer(),
            GestureDetector(
                onTap: (){
                  showCalenderBottomShet();
                },
                child: Image.asset(OImages.calender)),
          ],
        ),
      ),
    );
  }

  void showCalenderBottomShet() {
    showModalBottomSheet(
        showDragHandle: false,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return CustomButtomSheetInSpecificCategory(title: "The appropriate time and date for communication",);
        });
  }
}
