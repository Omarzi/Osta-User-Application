import '../../../utils/constants/exports.dart';
import '../../my_order/presentation/widget/custom_head_in_market_requests/custom_head_in_market_requests.dart';

class SubCategoryInMarket extends StatefulWidget {
  SubCategoryInMarket({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  State<SubCategoryInMarket> createState() => _SubCategoryInMarketState();
}

class _SubCategoryInMarketState extends State<SubCategoryInMarket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(
          icon: Icon(Icons.arrow_back, size: 23.sp, color: OColors.white),
          onPressed: () {context.pop();},
        ),
        title: Text(widget.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: OColors.white)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Badge.count(
                  count: 5,
                  backgroundColor: const Color(0xffE5CC13),
                  textColor: OColors.black,
                  child: SvgPicture.asset(OImages.cartIcon,width: 30.w,)),
              color: OColors.white),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: OSizes.spaceBtwTexts2, left: OSizes.spaceBtwTexts, right: OSizes.spaceBtwTexts),
          child: Column(
            children: [
              const CustomSearchBar(),
              SizedBox(height: OSizes.spaceBtwItems),
               CustomHeadInMarket(onTap1: (){showBottomSheetInFilter();}, onTap2: (){showBottomSheetInRanking();}),
              SizedBox(height: OSizes.spaceBtwItems),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: 1 / 1.7),
                shrinkWrap: true,
                itemCount: OConstants.subCategoryMarket.length,
                itemBuilder: (context, index) {
                  return CustomContainerBottomInMarket(isChecked: false,typeOfProduct: "Osta",
                    image: OConstants.subCategoryMarket[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  void showBottomSheetInFilter() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            topLeft: Radius.circular(OSizes.productImageRadius),
            topRight: Radius.circular(OSizes.productImageRadius))),
        showDragHandle: false,
        // isScrollControlled: true,
        context: context,
        builder: (context) {
          return CustomBottomSheetInFilter();
        });
  }

  void showBottomSheetInRanking() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            topLeft: Radius.circular(OSizes.productImageRadius),
            topRight: Radius.circular(OSizes.productImageRadius))),
        showDragHandle: true,
        // isScrollControlled: true,
        context: context,
        builder: (context) {
          return CustomBottomSheetInRanking();
        });
  }
}
