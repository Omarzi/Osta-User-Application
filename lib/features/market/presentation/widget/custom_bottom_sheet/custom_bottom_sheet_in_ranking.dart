import 'package:osta_app/features/market/presentation/widget/custom_bottom_sheet/custom_radio_button.dart';
import 'package:osta_app/features/market/presentation/widget/custom_bottom_sheet/custom_radio_button_in_ranking.dart';

import '../../../../../utils/constants/exports.dart';

class CustomBottomSheetInRanking extends StatelessWidget {
  const CustomBottomSheetInRanking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: OSizes.spaceBtwTexts2,right: OSizes.spaceBtwTexts2,top: OSizes.spaceBtwTexts),
      child: Column(
        children: [
          CustomCloseButton(),
          Text("Ranking",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),
          ),
          SizedBox(height: OSizes.spaceBtwItems,),
          CustomRadioButtonInRanking(),
          SizedBox(height: OSizes.spaceBtwTexts2),
          CustomButton2(text: "Sure", onTap: (){},height: OSizes.imageSize * 1.2,width: 300.w,)
        ],
      ),
    );
  }
}
