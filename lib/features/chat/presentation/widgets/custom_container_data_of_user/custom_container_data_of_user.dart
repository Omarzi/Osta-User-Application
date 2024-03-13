import 'package:osta_app/features/chat/presentation/widgets/custom_container_data_of_user/custom_button_to_add.dart';
import '../../../../../utils/constants/exports.dart';

class CustomContainerDataOfUser extends StatefulWidget {
  const CustomContainerDataOfUser({Key? key}) : super(key: key);

  @override
  State<CustomContainerDataOfUser> createState() => _CustomContainerDataOfUserState();
}
class _CustomContainerDataOfUserState extends State<CustomContainerDataOfUser> {

  // _buildRatingStars(int rating){
  //   String stars ='';
  //   for(int i=0;i<rating ;i++){
  //     stars +='⭐ ';
  //   }
  //   stars.trim();
  //   return Text(stars);
  // }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){
        showBottomSheet();
      },
      child: Card(
        elevation: 4.sp,
        child: Container(
          height: height / 5,
          decoration: BoxDecoration(
            color: OColors.white,
            borderRadius: BorderRadius.circular(OSizes.cardRadiusMd),
            border: Border.all(color: OColors.grey)
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: (OSizes.md),left: (OSizes.md),right: (OSizes.md)),
                child: Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: OColors.textInMyOrder1,
                        child: Image.asset(OImages.appLogoIcon,
                            width: 20.w),
                      ),
                      SizedBox(width: OSizes.spaceBetweenIcon),
                      Text("Amira Adel", style: Theme.of(context).textTheme.titleLarge),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor:  OColors.bgCall,
                        radius: 20.r,
                        child: const Icon(Icons.call, color: OColors.iconCall),
                      ),
                      SizedBox(width: OSizes.spaceBetweenIcon),
                      CircleAvatar(
                        backgroundColor:  OColors.bgLocation,
                        radius: 20.r,
                        child: const Icon(Icons.location_on,color: OColors.iconLocation),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: OSizes.spaceBtwTexts2),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: (OSizes.md)),
                child: Divider(
                  thickness: 1,
                  color: OColors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: OSizes.spaceBtwTexts2,horizontal: (OSizes.md)),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Center(child: CustomButtonToAdd(image: OImages.iconAdd, textButton: "Additional materials"))),

                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Container(height: 30.h,width: 2.w,color: OColors.grey),
                    // ),

                    Expanded(
                        flex: 3,
                        child: Center(child: CustomButtonToAdd(image: OImages.photoCamera, textButton: "Invoice copy"))),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems, vertical: OSizes.spaceBtwTexts),
                  decoration: BoxDecoration(
                    color: OColors.bgCall,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(OSizes.borderRadiusLg), bottomLeft: Radius.circular(OSizes.borderRadiusLg))
                  ),
                  child: Center(
                    child: Text("Awaiting order confirmation", style:Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.iconCall) ,),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
  void showBottomSheet() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            topLeft: Radius.circular(OSizes.productImageRadius),
            topRight: Radius.circular(OSizes.productImageRadius))),
        showDragHandle: false,
        context: context,
        builder: (context) {
          return CustomBottomSheetToRatingUser();
        });
  }
}
