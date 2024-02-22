import '../../../utils/constants/exports.dart';

class WashlistScreen extends StatelessWidget {
  const WashlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
        }, icon: Badge.count(count: 0, backgroundColor: const Color(0xffE5CC13), textColor: OColors.black, child: const Icon(Iconsax.notification)), color: OColors.white),
        title: SvgPicture.asset(OImages.appIcon, height: 26.h),
        centerTitle: true,
        actions: [
          Icon(Iconsax.location, size: 23.sp, color: OColors.white),
          SizedBox(width: OSizes.spaceBetweenIcon),
          Text('Favorite', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600, color: OColors.white)),
          SizedBox(width: OSizes.sm),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.spaceBtwTexts2,right: OSizes.spaceBtwTexts2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10.w, mainAxisSpacing: 10.h,childAspectRatio: 1/1.7),
                shrinkWrap: true,
                itemCount: OConstants.subCategoryMarket.length,
                itemBuilder: (context, index) {
                  return  GestureDetector(
                      onTap: (){Navigator.pushNamed(context, ORoutesName.detailsOfProductInMaket);},
                      child: CustomContainerBottomInMarket(image: OConstants.subCategoryMarket[index],typeOfProduct: "Sharp",isChecked: true));
                },
              ),

            ],
          ),
        ),
      ),

    );
  }
}
