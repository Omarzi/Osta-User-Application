import '../../../../../utils/constants/exports.dart';

class CustomContainerBottomInMarket extends StatelessWidget {
  CustomContainerBottomInMarket(
      {Key? key, required this.image, required this.typeOfProduct,required this.isChecked})
      : super(key: key);
  String image, typeOfProduct;
 bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: Container(
            height: 300.h,
            padding: EdgeInsets.only(
                top: OSizes.spaceBtwItems * 2,
                left: OSizes.spaceBtwTexts2,
                right: OSizes.spaceBtwTexts2,
                bottom: OSizes.spaceBtwTexts2),
            decoration: BoxDecoration(
              color: OColors.white,
              borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
              border: Border.all(color: OColors.grey, width: 0.4.w),

            ),
            child: Column(
              children: [
                Image.asset(image),
                SizedBox(height: OSizes.spaceBtwTexts2),
                const Text(
                    'Tornado split air conditioner, cold, Digital, ultra-fast cooling'),
                SizedBox(height: OSizes.spaceBtwTexts2),
                Row(
                  children: [
                    Text(
                      "500 EGB",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: OColors.textInMyOrder1),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(OSizes.spaceBtwTexts / 2),
                      height: OSizes.imageSize,
                      width: OSizes.buttonWidth / 1.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: OColors.bgContainerInMyOrder1,
                      ),
                      child: Row(
                        children: [
                          typeOfProduct == "Osta"
                              ? CircleAvatar(
                                  radius: 20.r,
                                  backgroundColor: OColors.textInMyOrder1,
                                  child: Image.asset(OImages.appLogoIcon,
                                      width: 20.w),
                                )
                              : SizedBox(),
                          SizedBox(
                            width: OSizes.spaceBtwItems,
                          ),
                          Text(
                            typeOfProduct,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: OColors.blue),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: OSizes.imageSize,
                      width: OSizes.imageSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        gradient: const LinearGradient(
                          colors: [Color(0xFF2E648C), Color(0xFF49AFD4)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: Center(
                          child: SvgPicture.asset("assets/images/cart.svg",
                              width: 20.w)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 10.h,
            right: 15.w,
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: OColors.white,
              child: Center(
                child: SvgPicture.asset(isChecked ? OImages.redFavorite : OImages.favorite2),
              ),
            )),
      ],
    );
  }
}
