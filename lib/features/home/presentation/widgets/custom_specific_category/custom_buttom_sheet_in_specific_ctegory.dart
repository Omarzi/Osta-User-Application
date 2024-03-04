import '../../../../../utils/constants/exports.dart';

class CustomButtomSheetInSpecificCategory extends StatefulWidget {
   CustomButtomSheetInSpecificCategory({Key? key,required this.title}) : super(key: key);
String title;
  @override
  State<CustomButtomSheetInSpecificCategory> createState() => _CustomButtomSheetInSpecificCategoryState();

}
class _CustomButtomSheetInSpecificCategoryState extends State<CustomButtomSheetInSpecificCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.h,
      child: Padding(
        padding:  EdgeInsets.only(left: 10.w,right: 10.w,top: 10.h),
        child: Column(
          children: [
            const CustomCloseButton(),
            Text(widget.title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
            ),
            SizedBox(height: 7.h,),
            CustomCalenderInBottomSheet(),
            SizedBox(height: 5.h,),
            CustomTimeInBottomSheet(),
            SizedBox(height: 5.h,),
            CustomButton2(text: "send",width: 330.w,height: 50.h,onTap: (){},),
          ],
        ),
      ),
    );
  }
}
