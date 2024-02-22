import '../../../utils/constants/exports.dart';

class NextBagOfTrade extends StatefulWidget {
   NextBagOfTrade({Key? key}) : super(key: key);

  @override
  State<NextBagOfTrade> createState() => _NextBagOfTradeState();
}

class _NextBagOfTradeState extends State<NextBagOfTrade> {
 TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Please attach the required documents",style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: OSizes.spaceBtwTexts2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainerForUploadImage(text: "Logo image"),
            SizedBox(width: OSizes.spaceBtwItems),
            CustomContainerForUploadImage(text: "ID card"),
          ],
        ),
        SizedBox(height: OSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainerForUploadImage(text: "Commercial Record"),
            SizedBox(width: OSizes.spaceBtwItems),
            CustomContainerForUploadImage(text: "Tax card"),
          ],
        ),
        SizedBox(height: OSizes.spaceBtwItems),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems),
          child: Divider(thickness: 1.2,color: OColors.grey),
        ),
        SizedBox(height: OSizes.spaceBtwItems),
        Text("Please enter your bank account details",style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: OSizes.spaceBtwItems * 2),
        CustomTextFormFeild3(hintText: "Account Holder's Name", controller: controller,label:
        Text("Account Holder's Name",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),),
        SizedBox(height: OSizes.spaceBtwItems),
        CustomTextFormFeild3(hintText: "account number", controller: controller,label:
        Text("account number",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),),
        SizedBox(height: OSizes.spaceBtwItems),
        CustomTextFormFeild3(hintText: "Bank name", controller: controller,label:
        Text("Bank name",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
        ),
        SizedBox(height: OSizes.spaceBtwItems),
        CustomTextFormFeild3(hintText: "Account number IBAN", controller: controller,label:
        Text("Account number IBAN",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
        ),
        SizedBox(height: OSizes.spaceBtwItems),
        CustomButton2(text: "registration", onTap: (){showAlertDialogForReqistration();},height: OSizes.imageSize * 1.3),


      ],
    );
  }
 void showAlertDialogForReqistration() {
   showDialog(
       context: context,
       builder: (BuildContext context){
         return   CustomAlertDialogInChat(
           haveTitle: true,
             title: "Your data has been sent to the administration",
             text: "There is not enough balance in your electronic wallet",
             image: OImages.correct,
             dottedColor: OColors.warning3,
             bgCircle: OColors.primary);
       }
   );
 }
}
