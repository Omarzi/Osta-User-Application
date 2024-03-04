import 'package:osta_app/utils/constants/exports.dart';

class TypeOfProductScreen extends StatelessWidget {
  const TypeOfProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(icon: Icon(Icons.arrow_back, size: 23.sp, color: OColors.white),onPressed: (){context.pop();},),
        title: Text("", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.white)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Badge.count(count: 5, backgroundColor: const Color(0xffE5CC13), textColor: OColors.black, child: SvgPicture.asset(OImages.cartIcon,width: 30.w,)), color: OColors.white),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.spaceBtwTexts2,right: OSizes.spaceBtwTexts2),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.r,
                    backgroundColor: OColors.primary,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sharp",style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Number of products: 165",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.grey2)),
                ],
              ),
              SizedBox(height: OSizes.spaceBtwItems),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10.w, mainAxisSpacing: 10.h,childAspectRatio: 1/1.7),
                shrinkWrap: true,
                itemCount: OConstants.subCategoryMarket.length,
                itemBuilder: (context, index) {
                  return  GestureDetector(
                      onTap: (){Navigator.pushNamed(context, ORoutesName.detailsOfProductInMaket);},
                      child: CustomContainerBottomInMarket(isChecked: false,image: OConstants.subCategoryMarket[index],typeOfProduct: "Sharp",));
                },
              ),
            ],
          ),
        ),
      ),


    );
  }
}
