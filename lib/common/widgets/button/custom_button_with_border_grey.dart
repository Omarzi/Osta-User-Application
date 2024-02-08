import '../../../utils/constants/exports.dart';

class CustomButtonWithBorderGrey extends StatelessWidget {
  CustomButtonWithBorderGrey({super.key, required this.text,this.height,this.width,required this.onTap});

  final String text;
  double? height=50.h;
  double? width=270.w;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              width: 1.w,
              color: OColors.grey
            )
          ),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: OColors.grey, height: .5.h),
            ),
          )
      ),
    );
  }
}
