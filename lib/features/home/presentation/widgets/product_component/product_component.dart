import 'package:osta_app/utils/constants/exports.dart';

class ProductComponent extends StatelessWidget {
   ProductComponent({super.key, required this.productName, required this.color,required this.onTap});

  final String productName;
  Color color;
  VoidCallback onTap ;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // width: 111.w,
        // height: 112.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: OColors.black.withOpacity(0.12),
              blurRadius: 20.r,
              offset: const Offset(0, 3),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 2.h,),
            Image.asset("assets/images/product1.png",width: 77.w,height: 77.h,),
           const Spacer(),
           Column(mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Row(
                 children: [
                   Expanded(
                     child: Container(
                       height: height / 14,
                       decoration: BoxDecoration(
                           color: OColors.white.withOpacity(0.3),

                       ),

                       child: Center(child: Text(productName),),
                     ),
                   ),
                 ],
               ),
             ],
           )
          ],
        ),
      ),
    );
  }
}