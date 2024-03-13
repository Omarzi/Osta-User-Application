import '../../../../../utils/constants/exports.dart';

class CustomComponentNegotiationList extends StatelessWidget {
  const CustomComponentNegotiationList({Key? key}) : super(key: key);

  _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
   double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems,vertical: OSizes.spaceBtwTexts2),
      child: Container(
        padding: EdgeInsets.only(left: OSizes.padding),

        height: height / 7,
        width: double.infinity,
        decoration: BoxDecoration(
          color: OColors.darkBlueColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(OSizes.borderRadiusLg), bottomRight: Radius.circular(OSizes.borderRadiusLg), bottomLeft: Radius.circular(OSizes.borderRadiusLg)),
        ),
        child: Row(
          children: [
         Expanded(
           flex: 5,
         child: Row(
           children: [
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 CircleAvatar(
                   radius: 23.r,
                   backgroundColor: OColors.white,
                   // child: Image.asset(OImages.appLogoIcon,
                   //     width: 20.w),
                 ),
                 Row(
                   children: [
                     _buildRatingStars(1),
                     Text("4.5",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.white,fontSize: 14.sp)),
                   ],
                 )
               ],
             ),
             SizedBox(width: OSizes.spaceBtwItems),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Amira Adel",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.white,fontSize: 14.sp)),
                 Text("150 Order",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.white,fontSize: 14.sp)),

               ],
             ),
             SizedBox(width: OSizes.spaceBtwTexts2),
             TextButton(onPressed: (){}, child:Text("Reject",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.error))),
             TextButton(onPressed: (){}, child:Text("Accept",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.green))),

           ],
         ),
         ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(OSizes.borderRadiusLg)),
                        color: OColors.whiteLevel,

                      ),
                      padding: EdgeInsets.symmetric(horizontal: OSizes.padding / 2),
                      child: Center(child: Text('Electric', overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w600))),
                    ),
                  ),

                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: OSizes.padding / 2),
                      decoration: BoxDecoration(
                        color: OColors.iconCall,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(OSizes.borderRadiusLg)),
                        border: Border(right: BorderSide(color: Colors.white, width: 1.w)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(child: Text('100 SR', overflow: TextOverflow.clip, style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w600, color: OColors.white), textAlign: TextAlign.center)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
