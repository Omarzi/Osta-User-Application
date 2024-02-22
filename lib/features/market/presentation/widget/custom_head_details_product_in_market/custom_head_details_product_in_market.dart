
import '../../../../../utils/constants/exports.dart';

class CustomHeadDetailsProductInMarket extends StatelessWidget {
  const CustomHeadDetailsProductInMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     CustomContainerInHeadDetailsProduct(),
     SizedBox(height: OSizes.spaceBtwTexts2,),
     Text("Cool horse digital cooling 3 Tornado ultra-fast split air conditioner",
     style: Theme.of(context).textTheme.titleMedium,
     ),
        SizedBox(height: OSizes.spaceBtwTexts2,),
        Container(
          padding: EdgeInsets.symmetric(horizontal:OSizes.spaceBtwTexts2),
          height: OSizes.imageSize,
          width: OSizes.buttonWidth * 1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: OColors.bgContainerInMyOrder1,
          ),
          child: Row(
            children: [
              Text('sharp',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),
              ),
             Spacer(),
              GestureDetector(
                onTap: (){Navigator.pushNamed(context, ORoutesName.typeOfProductRoute);},
                child: Text('Show products',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.textInMyOrder1),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: OSizes.spaceBtwTexts2,),
        Row(
          children: [
            Expanded(child: CustomTextOfDetailsMoney2(type:"500 EGB  " , price: "")),
            CustomContainerPlusAndMinus()
          ],
        ),


      ],
    );
  }
}
