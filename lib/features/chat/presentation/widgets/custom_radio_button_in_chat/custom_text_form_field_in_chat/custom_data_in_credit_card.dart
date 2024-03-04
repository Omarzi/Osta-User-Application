import 'package:osta_app/features/chat/presentation/widgets/custom_text_form_feild_in_bottom_sheet_payment/custom_text_form_field_in_bottom_sheet_payment.dart';

import '../../../../../../utils/constants/exports.dart';

GlobalKey<FormState> allDataCreditCardFormKey = GlobalKey<FormState>();

class CustomDataInCreditCard extends StatelessWidget {
  CustomDataInCreditCard({Key? key}) : super(key: key);
  TextEditingController userNameController = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  TextEditingController mmyy = TextEditingController();
  TextEditingController cvv = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: OSizes.spaceBtwTexts,
          left: OSizes.spaceBtwTexts,
          right: OSizes.spaceBtwTexts),
      child: Form(
          key: allDataCreditCardFormKey,
          child: Column(
            children: [
              ///User Name
              CustomTextFormField1(hintText: "Amira Adel", controller: userNameController,label: Text("User Name",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),),
              /// Make Some Space
              SizedBox(height: OSizes.spaceBtwInputFields),

              ///card Number
              CustomTextFormField1(hintText: "0000 0000 000 00", controller: cardNumber,label: Text("Card Number",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),),

              /// Make Some Space
              SizedBox(height: OSizes.spaceBtwInputFields),

              /// CVV/ MM/YY
              Row(
                children: [
                  Expanded(
                    child:CustomTextFormField1(hintText: "cvv", controller: cvv,label: Text("CVV",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),),
                  ),
                  SizedBox(width: OSizes.spaceBtwItems),
                  Expanded(
                    child:CustomTextFormField1(hintText: "mm/yy", controller: mmyy,label: Text("MM/YY",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
            ],
          )),
    );
  }
}
