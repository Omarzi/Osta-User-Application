import '../../../../../utils/constants/exports.dart';

class CustomBottomInSpecificCategory extends StatefulWidget {
  const CustomBottomInSpecificCategory({Key? key}) : super(key: key);

  @override
  State<CustomBottomInSpecificCategory> createState() => _CustomBottomInSpecificCategoryState();
}

class _CustomBottomInSpecificCategoryState extends State<CustomBottomInSpecificCategory> {
  @override
  Widget build(BuildContext context) {
double width = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        height: 90.h,
        decoration: BoxDecoration(
          color: OColors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.r),
            topLeft: Radius.circular(15.r),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton2(text: "Send", onTap: (){},height: OSizes.imageSize * 1.2, width: width / 1.2)
            // Container(
            //   height: 50.h,
            //   width: 270.w,
            //   decoration: BoxDecoration(
            //     gradient: const LinearGradient(
            //       colors: [Color(0xFF2E648C), Color(0xFF49AFD4)],
            //       begin: Alignment.centerLeft,
            //       end: Alignment.centerRight,
            //     ),
            //     borderRadius: BorderRadius.circular(20.r),
            //   ),
            //   child: Center(
            //     child: Text("Send",
            //     style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.white),
            //     ),
            //   ),
            // ),
            /// Calender &
            // SizedBox(width: 10.w,),
            // GestureDetector(
            //   onTap: (){
            //     showapointmentBottomShet();
            //   },
            //   child: Container(
            //     height: 50,
            //     width: 50,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10.r),
            //       color: const Color(0xffFEC000),
            //     ),
            //     child: Center(
            //       child: Image.asset(OImages.appointment),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
  void showapointmentBottomShet() {
    showModalBottomSheet(
      showDragHandle: false,
      isScrollControlled: true,
        context: context,
        builder: (context) {
          return CustomButtomSheetInSpecificCategory(title: "Schedule a visit");
        });
  }
}
