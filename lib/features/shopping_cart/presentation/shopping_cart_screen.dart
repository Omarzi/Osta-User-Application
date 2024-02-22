
import '../../../utils/constants/exports.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(icon: Icon(Icons.arrow_back, size: 23.sp, color: OColors.white),onPressed: (){context.pop();},),
        title: Text("Shopping Cart ", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.spaceBtwTexts2,right: OSizes.spaceBtwTexts2),
          child: Column(
            children: [
               //  CustomContainerOfShoppingCart(typeOfProduct: "sharp", image:OImages.subCategoryMarket1)
             SizedBox(
               height: 500.h,
               child: Expanded(
                 child: ListView.builder(
                   itemCount: 2,
                     itemBuilder: (context,index){
                       return CustomContainerOfShoppingCart(typeOfProduct: OConstants.typeOfProduct[index],image: OConstants.subCategoryMarket[index]);
                     }
                 ),
               ),
             ),
              const CustomDiscountCode(),
              CustomContainerInBottomShoppingCart(),
              SizedBox(height: OSizes.spaceBtwItems),
              CustomButton2(text: "Confirmation", onTap: (){
                Navigator.pushNamed(context, ORoutesName.oderConfirmationRoute);
              },height: OSizes.imageSize * 1.2,)
            ],
          ),
        ),
      ),

    );
  }
}
