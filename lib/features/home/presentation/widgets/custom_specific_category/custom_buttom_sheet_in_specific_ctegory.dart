import '../../../../../utils/constants/exports.dart';

class CustomButtomSheetInSpecificCategory extends StatefulWidget {
  const CustomButtomSheetInSpecificCategory({Key? key}) : super(key: key);

  @override
  State<CustomButtomSheetInSpecificCategory> createState() => _CustomButtomSheetInSpecificCategoryState();

}
class _CustomButtomSheetInSpecificCategoryState extends State<CustomButtomSheetInSpecificCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 670.h,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    context.pop();
                  },
                  child: CircleAvatar(
                    radius: 15.r,
                    backgroundColor: OColors.grey,
                    child: Center(
                      child: Icon(Icons.close,color: OColors.grey2,size: 20.sp,),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 7.h,),
            CustomCalenderInBottomSheet(),
            SizedBox(height: 5.h,),
            CustomTimeInBottomSheet(),
            SizedBox(height: 10.h,),
            CustomButton2(text: "send",width: 330.w,height: 50.h,onTap: (){},),
          ],
        ),
      ),
    );
  }
}
