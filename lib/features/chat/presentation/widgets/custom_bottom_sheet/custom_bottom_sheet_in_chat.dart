import 'package:osta_app/features/chat/presentation/widgets/custom_radio_button_in_chat/custom_radio_button_in_chat.dart';

import '../../../../../common/widgets/button/custom_close_button.dart';
import '../../../../../utils/constants/exports.dart';
class CustomBottomSheetInChat extends StatelessWidget {
  const CustomBottomSheetInChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              CustomButton2(text: "Sure", onTap: (){},width: 300.w,height: 50.h,)

            ],
          ),
        ),
      ),
    );
  }
}
