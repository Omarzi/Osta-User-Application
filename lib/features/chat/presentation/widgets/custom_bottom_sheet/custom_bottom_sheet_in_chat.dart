import 'package:osta_app/features/chat/presentation/widgets/custom_bottom_sheet/custom_bottom_sheet_in_electronic_wallet.dart';
import '../../../../../utils/constants/exports.dart';

class CustomBottomSheetInChat extends StatefulWidget {
  const CustomBottomSheetInChat({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheetInChat> createState() => _CustomBottomSheetInChatState();
}

class _CustomBottomSheetInChatState extends State<CustomBottomSheetInChat> {
  @override
  Widget build(BuildContext context) {
    bool electronicWallet=false;
    return Container(
      // height: 650.h,
      child: Padding(
        padding:  EdgeInsets.only(left: OSizes.spaceBtwTexts,right: OSizes.spaceBtwTexts,top: OSizes.spaceBtwItems ),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomCloseButton(),
              Text("Payment",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),
              ),
              Text("Choose payment method",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: OSizes.spaceBtwItems,),
              Container(
                height: 40.h,
                width: 150.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: OColors.bgCall
                ),
                child: const Center(
                  child: Text("Total 125 pounds",
                    style: TextStyle(color: OColors.iconCall),
                  ),
                ),
              ),
              SizedBox(height: OSizes.spaceBtwItems,),
              CustomRadioButtonInChat(),
              SizedBox(height: 10.h,),
              CustomButton2(text: "Sure", onTap: (){
               // electronicWallet ==true?
                context.pop();
               showBottomSheet();
              },width: 300.w,height: 50.h,)

            ],
          ),
        ),
      ),
    );
  }

  void showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return CustomBottomSheetInElectronicWallet();
        });
  }
}
