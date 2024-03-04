import '../../../../../utils/constants/exports.dart';

class CustomHeadInSpecificCategory extends StatelessWidget {
  const CustomHeadInSpecificCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
        children: [
          Container(
            padding: EdgeInsets.all(OSizes.spaceBtwItems / 1.2),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
                color: const Color(0xffF3F3F3)),
            child: Center(
              child: Text(
                "What he got with Asta", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.blue),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: double.infinity,
            height: height / 8.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainerInHead(
                    color: const Color(0xffFFE9EE),
                    image: OImages.completion,
                    title: "completion"),
                // SizedBox(width: OSizes.spaceBtwTexts2,),
                CustomContainerInHead(
                    color: const Color(0xffC1FAE6),
                    image: OImages.guarantee,
                    title: "quarantee"),
                // SizedBox(width: OSizes.spaceBtwTexts2,),
                CustomContainerInHead(
                    color: const Color(0xffFFF1CF),
                    image: OImages.quality,
                    title: "Quality"),
              ],
            ),
          ),
          SizedBox(height: OSizes.space,),


        ],
      );
  }
}
