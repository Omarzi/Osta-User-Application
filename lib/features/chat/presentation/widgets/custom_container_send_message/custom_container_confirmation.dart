import 'package:osta_app/common/widgets/button/custom_button_major_in_app.dart';
import 'package:osta_app/common/widgets/button/custom_button_with_border_grey.dart';

import '../../../../../utils/constants/exports.dart';

class CustomContainerConfirmation extends StatelessWidget {
   CustomContainerConfirmation({Key? key,required this.isTrue,required this.text1,required this.textBt1,required this.textBt2,}) : super(key: key);
bool isTrue=false;
String textBt1,textBt2,text1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBetweenIcon,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300.w,
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
                Text(text1),
             isTrue==true? Text("50 pound",
             style: TextStyle(color: OColors.iconCall),
             ):Text(""),
                SizedBox(height: OSizes.spaceBtwTexts,),
                Row(
                  children: [
                    CustomButton2(text: textBt1, onTap: (){},width: 130.w,height: 45.h,),
                    SizedBox(width: OSizes.spaceBetweenIcon,),
                    CustomButtonWithBorderGrey(text: textBt2,width: 130.w,onTap: (){},height: 45.h,),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: OSizes.spaceBtwItems,right: OSizes.spaceBtwItems,top:OSizes.spaceBtwTexts,bottom: OSizes.spaceBtwTexts ),
            child: Text("4:30PM",style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OColors.grey2),),
          )
        ],
      ),
    );
  }
}
