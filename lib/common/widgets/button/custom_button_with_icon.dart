import '../../../utils/constants/exports.dart';

class CustomButtonWithIcon extends StatelessWidget {
   CustomButtonWithIcon({Key? key,required this.onTap, required this.textButton, required this.icon,this.width}) : super(key: key);
  VoidCallback onTap;
  String textButton,icon;
   double? width=300.w;
   @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
          height: OSizes.imageSize * 1.3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF2E648C),Color(0xFF49AFD4)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(textButton, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.white, height: .5.h),
                ),
                SizedBox(width: OSizes.spaceBtwTexts2),
                SvgPicture.asset(icon),

              ],
            ),
          )
      ),
    );
  }
}
