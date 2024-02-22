import '../../../../../utils/constants/exports.dart';

class CustomProductInDetailsOrder extends StatelessWidget {
   CustomProductInDetailsOrder({Key? key,required this.image}) : super(key: key);
 String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts2,vertical: OSizes.spaceBtwTexts2),
      decoration: BoxDecoration(
        // color: OColors.grey,
        borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
        border: Border.all(
            color: OColors.grey,
            width: 1.w
        ),
        boxShadow: [
          BoxShadow(
            color: OColors.grey.withOpacity(0.12),
            blurRadius: 1.r,
            offset: const Offset(0, 3),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(OSizes.spaceBtwItems * 1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
                  border: Border.all(
                      width: 1.w,
                      color: OColors.grey
                  )
              ),
              child: Center(child: Image.asset(image))),
          ),
          SizedBox(width: OSizes.spaceBtwTexts2),
          Expanded(
            flex: 5,
            child: Padding(
              padding:EdgeInsets.only(top: OSizes.spaceBtwTexts2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cool Horse 3 Tornado split digital air conditioner, ultra-fast cooling"),
                  SizedBox(height: OSizes.spaceBtwTexts,),
                  Text("x1",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.grey3)),
                  SizedBox(height: OSizes.spaceBtwTexts,),
                 Text("500 EGB",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.iconCall)),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
