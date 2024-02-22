import '../../../../../utils/constants/exports.dart';

class CustomContainerAddressInSpecificCategory extends StatelessWidget {
   CustomContainerAddressInSpecificCategory({Key? key,required this.imageLocation, required this.isChecked}) : super(key: key);
String imageLocation;
bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:7,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
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
          border: Border.all(
            width: 0.2.w,color: Colors.grey
          )
        ),
        child: Row(
          children: [
            Image.asset(imageLocation),
            SizedBox(width: 20.w,),
            Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("the address",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OColors.blue,fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 2.h,),
                Text("Home",
                style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 2.h,),

                Text("Next to the metro, Maadi 7 St",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.grey),
                ),
              ],
            ),
            Spacer(),
          isChecked ? Image.asset(OImages.write) :SizedBox(),
          ],
        ),
      ),
    );
  }
}
