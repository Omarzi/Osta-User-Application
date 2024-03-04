import '../../../../../utils/constants/exports.dart';

class CustomDiscountCode extends StatelessWidget {
  const CustomDiscountCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding:  EdgeInsets.only(top: 15.w,left: 5.w,right: 5.w),
      // padding:  EdgeInsets.only(left:OSizes.spaceBetweenIcon ,right: OSizes.spaceBetweenIcon, top:10.h, ),

      child: Column(
        children: [
          Row(
            children: [
              Image.asset(OImages.coupon),
              SizedBox(width: 7.w,),
              Text("Discount Code",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.blue),
              )
            ],
          ),
          SizedBox(height: 5.h,),
          Container(
            padding: EdgeInsets.only(left: 10.w),
            height: 50.h,
            width: 348.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(
                width: 0.7.w,
                color: OColors.grey

              )
            ),
            child: Row(
              children: [
                Text("We56rQf41",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(color: OColors.labelColor),
                ),
                const Spacer(),
                Container(
                  height: 50.w,
                  width: 45.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.r),
                    bottomRight: Radius.circular(15.r),
                  ),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2ED3C1), Color(0xFF33B4E5)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                  child: Center(
                    child: Icon(
                      Icons.check,color: OColors.white,
                      size: 30.sp,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5.h,),
          Text("You have a discount of 30 pounds from the order value",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xffFBAE00)),
          )
        ],
      ),
    );
  }
}
