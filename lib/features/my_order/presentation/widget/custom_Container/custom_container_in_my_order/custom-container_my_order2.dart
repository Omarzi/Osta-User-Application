import '../../../../../../utils/constants/exports.dart';

class CustomContainerMyOrder2 extends StatefulWidget {
  const CustomContainerMyOrder2({Key? key}) : super(key: key);

  @override
  State<CustomContainerMyOrder2> createState() => _CustomContainerMyOrderState();
}
class _CustomContainerMyOrderState extends State<CustomContainerMyOrder2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: OColors.grey2,
            width: 0.3.w
        ),
        borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
        boxShadow: [
          BoxShadow(
            color: OColors.grey.withOpacity(0.12),
            blurRadius: 0.r,
            offset: const Offset(0,3),
            spreadRadius: 1,
          ),],
      ),
      height: 320.h,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts2),
                decoration: BoxDecoration(
                  color:OColors.bgContainerInMyOrder1,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(OSizes.borderRadiusLg), topLeft: Radius.circular(OSizes.borderRadiusLg)),
                ),
                child: Row(
                  children: [
                    Image.asset(OImages.calender2,width: 20.w),
                    SizedBox(width: OSizes.spaceBetweenIcon),
                    Text("Scheduled request", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color:OColors.textInMyOrder1)),
                    const Spacer(),
                    Text("23/05/2022",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: OColors.grey2),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.only(left: OSizes.padding * 1.5,right: OSizes.padding * 1.5),
                decoration: BoxDecoration(
                  color: OColors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(OSizes.borderRadiusLg), bottomLeft: Radius.circular(OSizes.borderRadiusLg)),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: OSizes.spaceBtwTexts2),
                    Text("Date and time", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue)),
                    SizedBox(height: OSizes.spaceBtwTexts),
                    Text("13/05/2022 - 3:00 PM", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.warning2)),
                    SizedBox(height: OSizes.spaceBtwTexts),
                    Text("Order Number 584746 : ", style: Theme.of(context).textTheme.titleMedium),
                    SizedBox(height: OSizes.spaceBtwTexts),
                    Text("Description of the problem", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue)),
                    SizedBox(height: OSizes.spaceBtwTexts2),
                    Text("Lorem Ipsum is a method of writing texts in Graphic design is commonly used", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.grey2)),
                    SizedBox(height: OSizes.spaceBtwTexts2),
                    CustomTextOfDetailsMoney2(type: "Total 225 EGB ", price: ""),
                    SizedBox(height: OSizes.spaceBtwTexts2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [CustomButton2(text: "Cancelling order", onTap: (){},width: 150.w,height: OSizes.imageSize)
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
