import 'package:osta_app/features/more/presentation/widgets/custom_bottom_sheet/custom_bottom_sheet_for_recharge_balance2.dart';
import '../../../../../utils/constants/exports.dart';

class CustomBottomSheetForRechargeBalance extends StatefulWidget {
  CustomBottomSheetForRechargeBalance({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheetForRechargeBalance> createState() =>
      _CustomBottomSheetForRechargeBalanceState();
}

class _CustomBottomSheetForRechargeBalanceState
    extends State<CustomBottomSheetForRechargeBalance> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 3,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: OSizes.spaceBtwItems, vertical: OSizes.spaceBtwTexts2),
        child: Column(
          children: [
            CustomCloseButton(),
            Text("Recharge the balance",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: OColors.blue)),
            SizedBox(height: OSizes.spaceBtwTexts2),
            Text("Select the amount you want to add to the wallet"),
            SizedBox(height: OSizes.spaceBtwTexts2),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: OSizes.spaceBtwItems * 3,
                  vertical: OSizes.spaceBtwItems),
              child: TextFormField(
                textAlign: TextAlign.center,
                controller: controller,
                keyboardType: TextInputType.name,
                expands: false,
                decoration: InputDecoration(
                  hintText: "500 EGB",
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: OColors.grey2),
                ),
                validator: (value) => OFormatter.formatUserName(value),
              ),
            ),
            Spacer(),
            CustomButton2(
                text: "Confirmtion",
                onTap: () {
                  context.pop();
                  showBottomSheetToRechargeBalance();
                },
                height: OSizes.imageSize * 1.4,
                width: width)
          ],
        ),
      ),
    );
  }

  void showBottomSheetToRechargeBalance() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(OSizes.productImageRadius),
                topRight: Radius.circular(OSizes.productImageRadius))),
        showDragHandle: true,
        // isScrollControlled: true,
        context: context,
        builder: (context) {
          return CustomBottomSheetForRechargeBalance2();
        });
  }
}
