import '../../../../../utils/constants/exports.dart';

class CustomSendText extends StatelessWidget {
   CustomSendText({Key? key,required this.text,required this.time}) : super(key: key);
 String text,time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBetweenIcon,),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(OSizes.sm),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(OSizes.cardRadiusLg),
                bottomLeft: Radius.circular(OSizes.cardRadiusLg),
                topRight: Radius.circular(OSizes.cardRadiusLg),
              ),
              color: Color(0xFFE8F8FF),
              border: Border.all(
                color: OColors.grey,
              ),
            ),
            child: Text(text,style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
          ),
          Padding(
            padding:  EdgeInsets.only(left: OSizes.spaceBtwItems,right: OSizes.spaceBtwItems,top:OSizes.spaceBtwTexts,bottom: OSizes.spaceBtwTexts ),
            child: Text(time,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OColors.grey2),),
          )

        ],
      ),
    );
  }
}
