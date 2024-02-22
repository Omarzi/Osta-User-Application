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
              CustomTextFormFeildINBotttomSheetPayment(
                labelText: "User Name",
                controller: userNameController,
                hintText: "Amira Adel",
              ),

              /// Make Some Space
              SizedBox(height: OSizes.spaceBtwInputFields),

              ///card Number
              CustomTextFormFeildINBotttomSheetPayment(
                labelText: "Card Number",
                controller: cardNumber,
                hintText: "0000 0000 000 00",
              ),

              /// Make Some Space
              SizedBox(height: OSizes.spaceBtwInputFields),

              /// CVV/ MM/YY
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormFeildINBotttomSheetPayment(
                      labelText: "CVV",
                      controller: cvv,
                      hintText: "cvv",
                    ),
                  ),
                  SizedBox(
                    width: OSizes.spaceBtwItems,
                  ),
                  Expanded(
                    child: CustomTextFormFeildINBotttomSheetPayment(
                      labelText: "MM/YY",
                      controller: mmyy,
                      hintText: "mm/yy",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          )),
    );
  }
}
