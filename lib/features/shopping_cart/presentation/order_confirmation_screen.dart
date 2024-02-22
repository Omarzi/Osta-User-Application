import '../../../utils/constants/exports.dart';

class OrderConfirmationScreen extends StatefulWidget {
  const OrderConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<OrderConfirmationScreen> createState() => _OrderConfirmationScreenState();
}

class _OrderConfirmationScreenState extends State<OrderConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(icon: Icon(Icons.arrow_back, size: 23.sp, color: OColors.white),onPressed: (){context.pop();},),
        title: Text("Confirmation", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.spaceBtwTexts2,right: OSizes.spaceBtwTexts2),
          child: Column(
            children: [
              CustomContainerAddressInSpecificCategory(imageLocation: OImages.location2,isChecked: true),
              SizedBox(height: OSizes.spaceBtwTexts2),
              Divider(thickness: 0.5),
              SizedBox(height: OSizes.spaceBtwTexts2),
              Row(
                children: [
                  Image.asset(OImages.creditCard),
                  SizedBox(width: OSizes.spaceBtwTexts2),
                  Text("payment method",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                ],
              ),
              SizedBox(height: OSizes.spaceBtwItems),
              CustomRadioButtonInChat(),
              SizedBox(height: OSizes.spaceBtwTexts2),
              CustomContainerInBottomShoppingCart(),
              SizedBox(height: OSizes.spaceBtwItems),
              CustomButton2(text: "Confirmation", onTap: (){
                setState(() {
                  showAlertDialogToConfirmationOrder();
                });
              },height: OSizes.imageSize * 1.2,)
            ],
          ),
        ),
      ),
    );
  }

  void showAlertDialogToConfirmationOrder() {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return   CustomAlertDialogInConfirmation(
            textButton: "My requests",
            haveTitle: true,
            title: "Your order is confirmed",
            text: "You can follow up on your order from my orders page",
            dottedColor: OColors.warning3,
            bgCircle: OColors.primary,
            image: OImages.correct,
          );
        }
    );
  }
}
