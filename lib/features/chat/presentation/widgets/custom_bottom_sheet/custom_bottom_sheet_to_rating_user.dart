import '../../../../../utils/constants/exports.dart';

class CustomBottomSheetToRatingUser extends StatelessWidget {
   CustomBottomSheetToRatingUser({Key? key}) : super(key: key);
  _buildRatingStars(int rating){
    String stars ='';
    for(int i=0;i<rating ;i++){
      stars +='⭐ ';
    }
    stars.trim();
    return Text(stars);
  }
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.spaceBtwItems,right: OSizes.spaceBtwItems),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Text("Amira Adel",
         style: Theme.of(context).textTheme.titleMedium,
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             _buildRatingStars(1),
             SizedBox(width: OSizes.spaceBtwTexts),
             Text("4.5",
               style: Theme.of(context).textTheme.bodySmall!.copyWith(color: OColors.blue),
             ),
             Text("(165) ",
             style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.grey),
             ),



         ],),
         SizedBox(height: OSizes.spaceBtwItems),
         const CustomRatingBar(),
         SizedBox(height: OSizes.spaceBtwItems),
         Row(
           children: [
             Text("Your comment to the service provider",
             style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OColors.blue),
             ),
           ],
         ),
         SizedBox(height: OSizes.spaceBtwTexts),
         CustomTextFormField1(hintText: "Write your comment for the service provider here", controller: controller,maxLines: 7),
         SizedBox(height: OSizes.spaceBtwItems),
         CustomButton2(text: "Send Now", onTap: (){},
           width: MediaQuery.of(context).size.width/1.2,
           height: MediaQuery.of(context).size.width/8,
         )
       ],
      ),
    );
  }
}
