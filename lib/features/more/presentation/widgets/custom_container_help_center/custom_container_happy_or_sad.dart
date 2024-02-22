import '../../../../../utils/constants/exports.dart';

class CustomContainerHappyOrSad extends StatelessWidget {
   CustomContainerHappyOrSad({Key? key, required this.image}) : super(key: key);
  String image;
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Container(
        height: OSizes.imageSize * 1.5,
        width: OSizes.space * 2.5,
        decoration: BoxDecoration(
            color: OColors.white,
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
            border: Border.all(
              color: OColors.grey,
              width: 0.5,

            )
        ),
        child: Center(
          child: Image.asset(image),
        ),
      ),
    );
  }
}
