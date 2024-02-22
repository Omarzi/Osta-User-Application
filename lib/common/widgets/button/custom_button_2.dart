import '../../../utils/constants/exports.dart';

class CustomButton2 extends StatelessWidget {
   CustomButton2({super.key, required this.text,this.height,this.width,required this.onTap,});

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
          gradient: LinearGradient(
            colors: [Color(0xFF2E648C),Color(0xFF49AFD4)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
            child: Center(
              child: Text(
                text, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.white, height: .5.h),
              ),
            )
      ),
    );
  }
}
