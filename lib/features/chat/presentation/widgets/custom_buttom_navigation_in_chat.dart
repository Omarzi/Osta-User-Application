import '../../../../utils/constants/exports.dart';

class CustomButtomNavigationInChat extends StatelessWidget {
    CustomButtomNavigationInChat({Key? key}) : super(key: key);
    TextEditingController controller = TextEditingController();

   @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(OSizes.spaceBetweenIcon),
      height: 60.h,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
            child: CustomTextFormFieldSearch(
                controller: controller,
                hintText: "... Write here",suffixIcon: SizedBox(
                  width: 70.w,
              child: Row(
                children: [
                  Image.asset(OImages.happiness),
                  SizedBox(width: OSizes.spaceBtwTexts),
                  Image.asset(OImages.camera),
                ],
              ),
            ),suffixIconColor: OColors.textInMyOrder1),
          ),
          SizedBox(width: OSizes.spaceBtwTexts),
          GestureDetector(
              onTap: (){},
              child: Container(
                height: 50.h,
               width: 50.w,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(50.r),
                 color: OColors.iconCall,
               ),
                child: Center(
                  child: Icon(controller.text.isNotEmpty ? Icons.send : Icons.mic,color: OColors.white,size: 20.sp),
                ),
              )
          ),
        ],
      ),
    );
  }
}
