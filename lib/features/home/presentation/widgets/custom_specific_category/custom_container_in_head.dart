import 'package:flutter/cupertino.dart';
import 'package:osta_app/utils/constants/exports.dart';

class CustomContainerInHead extends StatelessWidget {
   CustomContainerInHead({Key? key ,required this.color,required this.image,required this.title}) : super(key: key);
Color color;
String image;
String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.h,
      width: 115.w,
      padding: EdgeInsets.symmetric(vertical: 7.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: color,
      ),
      child: Column(
        children: [
          SizedBox(height: 5.h,),
          Image.asset(image),
          Spacer(),
          Text(title,style: Theme.of(context).textTheme.titleMedium,)
        ],
      ),
    );
  }
}
