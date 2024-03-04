import '../../../utils/constants/exports.dart';

class DetailsOfMyOrderScreen extends StatefulWidget {
   DetailsOfMyOrderScreen({Key? key,required this.map}) : super(key: key);
   Map<String, dynamic> map;

  @override
  State<DetailsOfMyOrderScreen> createState() => _DetailsOfMyOrderScreenState();
}

class _DetailsOfMyOrderScreenState extends State<DetailsOfMyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;

    return Scaffold(
      appBar: OAppBar(
        title: Text("Order details",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white)),
        centerTitle: true,
        actions: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts),
            child: GestureDetector(
                onTap: (){context.pushNamed(ORoutesName.technicalSupportChatRout);},
                child: Image.asset(OImages.iconChat,width: 40.w)),
          )
        ],
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.spaceBtwTexts2,right: OSizes.spaceBtwTexts2,bottom: OSizes.spaceBtwTexts2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CustomOrderData(map: widget.map),
              SizedBox(height: OSizes.spaceBtwItems),
              CustomOrderStepper(),
              SizedBox(height: OSizes.spaceBtwItems),
              Text("Products",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
              SizedBox(height: OSizes.spaceBtwItems),
              CustomProductInDetailsOrder(image: OImages.subCategoryMarket1),
              SizedBox(height: OSizes.spaceBtwItems),
              CustomProductInDetailsOrder(image: OImages.subCategoryMarket2),
              SizedBox(height: OSizes.spaceBtwItems),
              CustomContainerAddressInSpecificCategory(imageLocation: OImages.location,isChecked: false),
              SizedBox(height: OSizes.spaceBtwItems),
              const CustomContainerPaymentMethod(),
              SizedBox(height: OSizes.spaceBtwItems),
              CustomBottomDetailsOrder(onTap: (){
                showBottomSheetInMyOrder();
              },)

            ],
          ),
        ),
      ),
    );
  }

   void showBottomSheetInMyOrder() {
     showModalBottomSheet(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
             topLeft: Radius.circular(OSizes.productImageRadius),
             topRight: Radius.circular(OSizes.productImageRadius))),
         showDragHandle: true,
         // isScrollControlled: true,
         context: context,
         builder: (context) {
           return const BottomSheetInMyOrder();
         });
   }
}
