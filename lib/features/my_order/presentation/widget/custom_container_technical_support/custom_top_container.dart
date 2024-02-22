import '../../../../../utils/constants/exports.dart';

class CustomTopContainerInTechnicalSupport extends StatelessWidget {
   CustomTopContainerInTechnicalSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: OSizes.imageSize * 1,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(OSizes.borderRadiusLg *  2),
          color: OColors.bgContainerInMyOrder1
      ),
      child: Center(
          child: Text("Order Number : 12345",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue))),
    );

  }
}
