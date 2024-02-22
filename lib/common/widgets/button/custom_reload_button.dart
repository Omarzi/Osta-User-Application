import '../../../utils/constants/exports.dart';

class CustomReloadButton extends StatelessWidget {
  CustomReloadButton({super.key,required this.onTap});

  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF2E648C),Color(0xFF49AFD4)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Center(
            child: Image.asset(OImages.reload),
          )
      ),
    );
  }
}
