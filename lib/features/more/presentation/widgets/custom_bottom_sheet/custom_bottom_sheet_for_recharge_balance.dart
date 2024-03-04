import '../../../../../utils/constants/exports.dart';

class CustomBottomSheetForRechargeBalance extends StatefulWidget {
  const CustomBottomSheetForRechargeBalance({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheetForRechargeBalance> createState() =>
      _CustomBottomSheetForRechargeBalanceState();
}

class _CustomBottomSheetForRechargeBalanceState
    extends State<CustomBottomSheetForRechargeBalance> with SingleTickerProviderStateMixin {

  TextEditingController controller = TextEditingController();
  AnimationController? animationController;

  @override
  initState() {
    super.initState();
    animationController = BottomSheet.createAnimationController(this);
    /// Animation duration for displaying the BottomSheet
    animationController!.duration = const Duration(seconds: 500);
    /// Animation duration for retracting the BottomSheet
    animationController!.reverseDuration = const Duration(milliseconds: 500);
    /// Set animation curve duration for the BottomSheet
    animationController!.drive(CurveTween(curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height / 3,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: OSizes.spaceBtwItems),
        child: Column(
          children: [
            const CustomCloseButton(),
            Text("Recharge the balance",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
            SizedBox(height: OSizes.spaceBtwTexts2),
            const Text("Select the amount you want to add to the wallet"),
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
                  hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.grey2),
                ),
                validator: (value) => OFormatter.formatUserName(value),
              ),
            ),
            const Spacer(),
            CustomButton2(
                text: "Confirmation",
                onTap: () {context.pop();showBottomSheetToRechargeBalance();
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
        transitionAnimationController: animationController,
        builder: (context) {
          return CustomBottomSheetForRechargeBalance2();
        });
  }
}
