import '../../../../../utils/constants/exports.dart';

class CustomCenterInSpecificCategory extends StatefulWidget {
   const CustomCenterInSpecificCategory({Key? key}) : super(key: key);

  @override
  State<CustomCenterInSpecificCategory> createState() => _CustomCenterInSpecificCategoryState();
}
class _CustomCenterInSpecificCategoryState extends State<CustomCenterInSpecificCategory> {
  @override

  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 10.h,bottom: 15.h),
      child: Column(
        children: [
          CustomContainerAddressInSpecificCategory(imageLocation: OImages.location,isChecked: true),
          SizedBox(height: 7.h,),
          GestureDetector(
            onTap: (){
              setState(() {
                isChecked= !isChecked;
              });
            },
            child: Card(
              elevation: 7,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 7,
                        blurRadius: 8,
                        // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(width: 0.2.w, color: Colors.grey)),
                child: Row(
                  children: [
                    Image.asset(OImages.appLogoIcon,width: 25.w,),
                    SizedBox(width: 20.w,),
                    Text(
                      "Ask for a warranty",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: OColors.blue, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: OColors.primary,
                      radius: 15.r,
                      child: Center(
                        child:  isChecked == true ?
                        Icon(Icons.keyboard_arrow_up,color: OColors.white,) :Icon(Icons.keyboard_arrow_down,color: OColors.white,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          isChecked== true?  CustomListRadioButton():SizedBox(),
        ],
      ),
    );
  }
}
