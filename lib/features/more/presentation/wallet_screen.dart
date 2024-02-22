
import '../../../utils/constants/exports.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    return Scaffold(
      appBar: OAppBar(
        title: Text("Wallet",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white),),
        centerTitle: true,
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OSizes.spaceBtwItems),
          child: Center(
            child: Column(
              children: [
                /// Make Size
                SizedBox(height: OSizes.spaceBtwItems * 3),
                /// Image Of Wallet
                Image.asset(OImages.wallet2,width: 150,height: 150),
                /// Make Size
                SizedBox(height: OSizes.spaceBtwItems),
                /// Text
                Text("Your current balance",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                /// Make Size
                SizedBox(height: OSizes.spaceBtwItems),
                /// Container For Balence
                Container(
                  height: OSizes.imageSize * 1.5,
                  width: width / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
                    color: OColors.bgContainerInMyOrder1,
                  ),
                  child: Center(
                    child: Text("250 EGB",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.textInMyOrder1))
                  ),
                )

              ],
            ),
          ),
        ),
      ),
      /// button
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal:OSizes.spaceBtwItems,vertical: OSizes.spaceBtwTexts),
        child: CustomButton2(onTap: (){
          showBottomSheetInWallet();
        },text: "Recharge the balance",height: OSizes.imageSize * 1.3),
      ),


    );
  }

  void showBottomSheetInWallet() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            topLeft: Radius.circular(OSizes.productImageRadius),
            topRight: Radius.circular(OSizes.productImageRadius))),
        showDragHandle: true,
        // isScrollControlled: true,
        context: context,
        builder: (context) {
          return CustomBottomSheetForRechargeBalance();
        });
  }
}
