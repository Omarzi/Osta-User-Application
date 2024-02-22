import '../../../../../utils/constants/exports.dart';

class CustomContainerInHeadDetailsProduct extends StatelessWidget {
   CustomContainerInHeadDetailsProduct({Key? key}) : super(key: key);
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    final pages = List.generate(5, (index) => Center(child: Image.asset(OConstants.subCategoryMarket[index],width: OSizes.buttonWidth * 2)));

    return Container(
      padding: EdgeInsets.symmetric(vertical: OSizes.spaceBtwItems,horizontal: OSizes.spaceBtwTexts),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
        border: Border.all(
          color: OColors.grey2,
          width: 0.5.w
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(OImages.favorite2),
              ],
            ),
          ),
          SizedBox(
            height: 150.h,
            child: PageView.builder(
              controller: controller,
              // itemCount: pages.length,
              itemBuilder: (_, index) {
                return pages[index % pages.length];
              },
            ),
          ),
          SizedBox(height: OSizes.spaceBtwItems,),
          SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect:  ExpandingDotsEffect(
              dotHeight: 12.h,
              dotWidth: 12.w,
              activeDotColor: OColors.warning2
            ),
          ),
        ],
      ),
    );
  }
}
