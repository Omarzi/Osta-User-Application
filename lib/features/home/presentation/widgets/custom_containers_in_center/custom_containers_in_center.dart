import 'package:osta_app/utils/constants/exports.dart';

class CustomContainerInCenter extends StatelessWidget {
   CustomContainerInCenter({Key? key,required this.color1,required this.color2, required this.title,required this.image}) : super(key: key);
Color color1;
Color color2;
String title;
String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:OSizes.spaceBetweenIcon ,right: OSizes.spaceBetweenIcon, top:OSizes.spaceBtwTexts, bottom:  OSizes.spaceBtwItems,),
      child: Container(
        padding: EdgeInsets.only(top: 10.h,left: 10.w,right: 10.w,bottom: 5.h),
        height: 90.h,
        width: 171.w,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          borderRadius: BorderRadius.circular(10.r),
          // color: color
        ),
        child: Row(
          children: [
           SizedBox(
             width: 70.w,
             child: Text(title,
             style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white,fontSize: 15.sp),
             ),
           ),
           const Spacer(),
           Image.asset(image),
          ],
        ),

      ),
    );
  }
}
