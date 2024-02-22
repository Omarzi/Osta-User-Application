import '../../../../utils/constants/exports.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Google Logo
        Container(
          decoration: BoxDecoration(border: Border.all(color: OColors.grey), borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: OSizes.iconMd,
              height: OSizes.iconMd,
              image: const AssetImage(OImages.facebook),
            ),
          ),
        ),
        /// Make Some Space
        SizedBox(width: OSizes.spaceBtwTexts2),
        /// Facebook Logo
        Container(
          decoration: BoxDecoration(border: Border.all(color: OColors.grey), borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: OSizes.iconMd,
              height: OSizes.iconMd,
                OImages.whatsappLogo,
            ),
          ),
        ),
        /// Make Some Space
        SizedBox(width: OSizes.spaceBtwTexts2),
        /// Instagram Logo
        Container(
          decoration: BoxDecoration(border: Border.all(color: OColors.grey), borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: OSizes.iconMd,
              height: OSizes.iconMd,
              OImages.instagramLogo,
            ),
          ),
        ),
        /// Make Some Space
        SizedBox(width: OSizes.spaceBtwTexts2),
        /// Twitter Logo
        Container(
          decoration: BoxDecoration(border: Border.all(color: OColors.grey), borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: OSizes.iconMd,
              height: OSizes.iconMd,
              OImages.twitterLogo,
            ),
          ),
        ),
        /// Make Some Space
        SizedBox(width: OSizes.spaceBtwTexts2),
        /// Youtube Logo
        Container(
          decoration: BoxDecoration(border: Border.all(color: OColors.grey), borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: OSizes.iconMd,
              height: OSizes.iconMd,
              OImages.youtubeLogo,
            ),
          ),
        ),
        /// Make Some Space
        SizedBox(width: OSizes.spaceBtwTexts2),
        /// Tiktok Logo
        Container(
          decoration: BoxDecoration(border: Border.all(color: OColors.grey), borderRadius: BorderRadius.circular(100.r)),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: OSizes.iconMd,
              height: OSizes.iconMd,
              OImages.tiktokLogo,
            ),
          ),
        ),
      ],
    );

  }
}
