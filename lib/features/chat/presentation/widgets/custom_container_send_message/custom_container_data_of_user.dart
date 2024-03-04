import '../../../../../utils/constants/exports.dart';

class CustomContainerDataOfUser extends StatefulWidget {
  const CustomContainerDataOfUser({Key? key}) : super(key: key);

  @override
  State<CustomContainerDataOfUser> createState() => _CustomContainerDataOfUserState();
}

class _CustomContainerDataOfUserState extends State<CustomContainerDataOfUser> {
  _buildRatingStars(int rating){
    String stars ='';
    for(int i=0;i<rating ;i++){
      stars +='⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showBottomSheet();
      },
      child: Card(
        elevation: 4.sp,
        child: Container(
          height: 80.h,
          padding: EdgeInsets.all(OSizes.md),
          decoration: BoxDecoration(
            color: OColors.white,
            borderRadius: BorderRadius.circular(OSizes.cardRadiusMd),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Text("Amira Adel", style: Theme.of(context).textTheme.titleLarge),
                  Row(children: [
                    const Text("4.5"),
                    SizedBox(width: OSizes.spaceBtwTexts),
                    _buildRatingStars(1),

                  ],)

                ],
              ),
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
