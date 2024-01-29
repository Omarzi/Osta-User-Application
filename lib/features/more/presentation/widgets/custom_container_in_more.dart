import 'package:osta_app/utils/constants/exports.dart';

class CustomContainerInMore extends StatelessWidget {
  const CustomContainerInMore({super.key, required this.imagePath, required this.text});

  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .07,
      padding: EdgeInsets.symmetric(horizontal: OSizes.padding),
      decoration: BoxDecoration(
        color: OColors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 3),
            spreadRadius: 0,
            blurRadius: 20.r,
            color: OColors.black.withOpacity(0.1),
          ),
        ],
        borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
      ),
      child: Row(
        children: [
          Image.asset(imagePath, height: 24.h, width: 28.w),
          SizedBox(width: OSizes.space),
          Text(text, style: Theme.of(context).textTheme.bodySmall!.copyWith(color: const Color(0xFF2370A2), fontSize: 15.sp)),
          const Spacer(),
          Icon(Icons.arrow_forward_ios, size: 18.sp),
        ],
      ),
    );
  }
}
