import 'package:osta_app/features/market/presentation/widget/custom_bottom_sheet/custom_radio_button.dart';

import '../../../../../utils/constants/exports.dart';

class CustomBottomSheetInFilter extends StatelessWidget {
  const CustomBottomSheetInFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: OSizes.spaceBtwTexts2,right: OSizes.spaceBtwTexts2,top: OSizes.spaceBtwTexts),
      child: Column(
        children: [
          CustomCloseButton(),
          Text("Filter",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),
          ),
          SizedBox(height: OSizes.spaceBtwItems,),
          CustomRadioButtonInFilter(),
          SizedBox(height: OSizes.spaceBtwTexts2),
          CustomButton2(text: "Sure", onTap: (){},height: OSizes.imageSize * 1.2,width: 300.w,)
        ],
      ),
    );
  }
}
