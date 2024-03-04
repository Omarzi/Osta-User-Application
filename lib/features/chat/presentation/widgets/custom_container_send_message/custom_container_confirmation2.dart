import '../../../../../utils/constants/exports.dart';

class CustomContainerConfirmation2 extends StatelessWidget {
   CustomContainerConfirmation2({Key? key,required this.text,required this.textButton,this.width,required this.onTap}) : super(key: key);
 String text,textButton;
 double? width=300.w;
   VoidCallback onTap;

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBetweenIcon,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width,
            padding: EdgeInsets.all(OSizes.sm),
            decoration: BoxDecoration(
                border: Border.all(
                  color: OColors.grey,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(OSizes.cardRadiusMd),
                  bottomLeft: Radius.circular(OSizes.cardRadiusMd),
                  bottomRight: Radius.circular(OSizes.cardRadiusMd),
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text),
                SizedBox(height: OSizes.spaceBtwTexts2),
                Row(
                  children: [
                    CustomButton2(text: textButton, onTap: onTap,width: 150.w,height: 45.h),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: OSizes.spaceBtwItems,right: OSizes.spaceBtwItems,top:OSizes.spaceBtwTexts,bottom: OSizes.spaceBtwTexts ),
            child: Text("4:30PM",style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OColors.grey2)),
          )
        ],
      ),
    );
  }
}
