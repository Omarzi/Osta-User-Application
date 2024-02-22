import '../../../../../utils/constants/exports.dart';

class CustomCategorInMarket extends StatelessWidget {
   CustomCategorInMarket({Key? key,required this.image,required this.title}) : super(key: key);
   String image,title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts2,vertical: OSizes.spaceBtwItems),
      child: Column(
        children: [
         Container(
           height: 70.h,
           width: 70.w,
           decoration: BoxDecoration(
             color: OColors.bgContainerInMyOrder1,
             borderRadius: BorderRadius.circular(50.r),
             border: Border.all(
               color: OColors.textInMyOrder1,
               width: 0.4.w
             )
           ),
           child: Center(
             child: Image.asset(image,width: OSizes.buttonWidth / 2,),
           ),
         ),
          SizedBox(height: OSizes.spaceBtwTexts,),
          Text(title)
        ],
      ),
    );
  }
}
