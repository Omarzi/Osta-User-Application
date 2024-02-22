import '../../../../../utils/constants/exports.dart';

class CustomContainerForUploadImage extends StatelessWidget {
   CustomContainerForUploadImage({Key? key,required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DottedBorder(
          strokeWidth: 1.5,
          color: OColors.iconCall,
          borderType: BorderType.RRect,
          radius:  Radius.circular(OSizes.borderRadiusLg),
          padding:  EdgeInsets.all(0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Container(
                width: 150.w,
                height: OSizes.imageSize * 1.7,
                decoration: BoxDecoration(
                  color: OColors.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(
                  child: Image.asset(OImages.photoCamera),
                ),
              )
          ),
        ),
        SizedBox(height: OSizes.spaceBtwTexts2),
        Text(text,style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue))
      ],
    );

  }
}
