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
    return Form(
      key: allDataCreditCardFormKey,
        child: Column(
          children: [
            ///User Name
            TextFormField(
              controller: userNameController,
              keyboardType: TextInputType.name,
              expands: false,
              decoration: InputDecoration(
                labelText: "userName".tr(context),
                labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
                hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
              ),
              validator: (value) => OFormatter.formatUserName(value),
            ),
            /// Make Some Space
            SizedBox(height: OSizes.spaceBtwInputFields),
            ///card Number
            TextFormField(
              controller: cardNumber,
              keyboardType: TextInputType.name,
              expands: false,
              decoration: InputDecoration(
                labelText: "Card Number",
                labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
                hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
              ),
              validator: (value) => OFormatter.formatUserName(value),
            ),
            /// Make Some Space
            SizedBox(height: OSizes.spaceBtwInputFields),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: cvv,
                    keyboardType: TextInputType.name,
                    expands: false,
                    decoration: InputDecoration(
                      labelText: "CVV",
                      labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
                      hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
                    ),
                    validator: (value) => OFormatter.formatUserName(value),
                  ),
                ),
                SizedBox(width: OSizes.spaceBtwItems,),
                Expanded(
                  child: TextFormField(
                    controller: mmyy,
                    keyboardType: TextInputType.name,
                    expands: false,
                    decoration: InputDecoration(
                      labelText: "MM/YY",
                      labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
                      hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
                    ),
                    validator: (value) => OFormatter.formatUserName(value),
                  ),
                ),

              ],
            ),
            SizedBox(height: 10.h,),
    ],));
  }
}
