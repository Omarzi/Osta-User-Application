import '../../../../../utils/constants/exports.dart';

class CustomContainerEnded extends StatelessWidget {
  const CustomContainerEnded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 5.sp,
      child: Padding(
        padding:  EdgeInsets.only(bottom: 0),
        child: Container(
          padding: EdgeInsets.all(OSizes.spaceBtwItems),
          height: 80.h,
          decoration: BoxDecoration(
            color: OColors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(OSizes.cardRadiusLg),
              topLeft: Radius.circular(OSizes.cardRadiusLg),
            ),

          ),
          child: Row(
            children: [
              Text("Total amount "),
              Text("(Including tax added)",
              style: TextStyle(color: OColors.iconCall),
              ),
              Spacer(),
              Container(
                height: 30.h,
                width: 90.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  color: OColors.bgCall
                ),
                child: Center(
                  child: Text("125 pounds",
                  style: TextStyle(color: OColors.iconCall),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
