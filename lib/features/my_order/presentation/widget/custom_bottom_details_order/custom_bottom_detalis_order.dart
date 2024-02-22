import '../../../../../utils/constants/exports.dart';

class CustomBottomDetailsOrder extends StatelessWidget {
   CustomBottomDetailsOrder({Key? key,required this.onTap}) : super(key: key);
   VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Total ",style: Theme.of(context).textTheme.titleLarge),
        Text("(Including value added)",style: Theme.of(context).textTheme.bodySmall!.copyWith(color: OColors.iconCall),),
        Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: OSizes.imageSize / 1.2,
            width: 120.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(OSizes.borderRadiusLg * 2),
              color: OColors.bgContainerInMyOrder1
            ),
            child: Center(
              child: Text("5.250 EGB",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white),),
            ),
          ),
        )
      ],
    );
  }
}
