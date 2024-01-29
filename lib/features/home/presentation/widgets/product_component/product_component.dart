import 'package:osta_app/utils/constants/exports.dart';

class ProductComponent extends StatelessWidget {
  const ProductComponent({super.key, required this.productName});

  final String productName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 111.w,
      height: 114.h,
      decoration: BoxDecoration(
        color: OColors.white,
        boxShadow: [
          BoxShadow(
            color: OColors.black.withOpacity(0.12),
            blurRadius: 20.r,
            offset: const Offset(0, 3),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 2.h),
          Image.asset(OImages.product1, height: 77.h, width: 77.w),
          SizedBox(height: 5.h),
          Text(productName),
        ],
      ),
    );
  }
}