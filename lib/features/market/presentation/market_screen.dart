import '../../../utils/constants/exports.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(icon: Icon(Icons.arrow_back, size: 23.sp, color: OColors.white),onPressed: (){context.pop();},),
        title: Text("Market", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.white)),
        centerTitle: true,
        actions: [

          IconButton(onPressed: (){}, icon: Badge.count(count: 5, backgroundColor: const Color(0xffE5CC13), textColor: OColors.black, child: SvgPicture.asset(OImages.cartIcon,width: 30.w,)), color: OColors.white),
          IconButton(onPressed: (){
            Navigator.pushNamed(context, ORoutesName.searchBarRoute);

          }, icon: Icon(Icons.search, color: OColors.white, size: 25.sp,))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: OSizes.spaceBtwTexts2,left: OSizes.spaceBtwTexts,right: OSizes.spaceBtwTexts),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Slider
              const CustomSlider(),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems,),
              ///Category In Market
              Text("Shop by category",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems,),
              SizedBox(
                height: 150.h,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: OConstants.imgeCategoryMarket.length,
                      itemBuilder: (context,index){
                    return GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, ORoutesName.subCategoryInMarket,arguments: OConstants.titleCategoryMarket[index]);
                        },
                        child: CustomCategorInMarket(image: OConstants.imgeCategoryMarket[index], title: OConstants.titleCategoryMarket[index]));
                  }),
                ),
              ),
              /// Subcategory
              Text("Newly added",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
              SizedBox(height: OSizes.spaceBtwItems,),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10.w, mainAxisSpacing: 10.h,childAspectRatio: 1/1.7),
                shrinkWrap: true,
                itemCount: OConstants.subCategoryMarket.length,
                itemBuilder: (context, index) {
                  return  GestureDetector(
                      onTap: (){Navigator.pushNamed(context, ORoutesName.detailsOfProductInMaket);},
                      child: CustomContainerBottomInMarket(isChecked: false,image: OConstants.subCategoryMarket[index],typeOfProduct: "Osta",));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
