import '../../../../../utils/constants/exports.dart';

class CustomHeadInMarket extends StatelessWidget {
   CustomHeadInMarket({Key? key,required this.onTap1,required this.onTap2}) : super(key: key);
 VoidCallback onTap1;
 VoidCallback onTap2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: onTap1,
                      child: const Text("Filter")),
                  SizedBox(width: OSizes.spaceBtwTexts2,),
                  Image.asset(OImages.filter),
                ],
              ),
            ),
            Container(height: 40,width: 1,color: OColors.grey2,),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: onTap2,
                      child: const Text("Ranking")),
                  SizedBox(width: OSizes.spaceBtwTexts2,),
                  Image.asset(OImages.ranking),
                ],
              ),
            ),

          ],
        ),
        Divider(thickness: 1,)
      ],
    );
  }
}
