import '../../../../../utils/constants/exports.dart';

class CustomContainerOfShoppingCart extends StatelessWidget {
   CustomContainerOfShoppingCart({Key? key, required this.typeOfProduct,required this.image}) : super(key: key);
  String typeOfProduct,image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
         // padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems * 2),
         height: OSizes.imageSize * 1,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg *  2),
            color: OColors.bgContainerInMyOrder1
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              typeOfProduct == "Osta"
                  ? CircleAvatar(
                radius: 19.r,
                backgroundColor: OColors.textInMyOrder1,
                child: Image.asset(OImages.appLogoIcon,
                    width: 20.w),
              ): SizedBox(width: OSizes.spaceBtwItems),
              SizedBox(width: OSizes.spaceBtwItems),
              Text(typeOfProduct,style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
            ],
          ),
        ),
        SizedBox(height: OSizes.spaceBtwItems),
        Container(
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
              const Expanded(
                  flex: 1,
                  child: CustomCloseButton2()),
              Expanded(
                flex: 5,
                child: Padding(
                  padding:EdgeInsets.only(top: OSizes.spaceBtwTexts2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Cool Horse 3 Tornado split digital air conditioner, ultra-fast cooling"),
                      SizedBox(height: OSizes.spaceBtwTexts,),
                      Text(typeOfProduct,style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.grey3)),
                      SizedBox(height: OSizes.spaceBtwTexts,),
                      CustomTextOfDetailsMoney2(type: "500 EGB ", price: " "),
                      SizedBox(height: OSizes.spaceBtwTexts2,),
                      CustomContainerPlusAndMinus(),
                    ],
                  ),
                ),
              ),
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
                  child: Center(child: Image.asset(image)),),
              )
            ],
          ),
        ),
        SizedBox(height: OSizes.spaceBtwItems),

      ],
    );
  }
}
