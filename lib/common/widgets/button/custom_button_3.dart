import '../../../utils/constants/exports.dart';

class CustomButton3 extends StatelessWidget {
  CustomButton3({super.key, required this.text,this.height,this.width,required this.onTap,required this.color1,required this.color2});

  final String text;
  double? height=50.h;
  double? width=270.w;
  VoidCallback onTap;
  Color color1;
  Color color2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1,color2],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: OColors.white, height: .5.h),
            ),
          )
      ),
    );
  }
}
