import 'package:osta_app/utils/constants/exports.dart';

class customCategoryCompnentInRequestAContractor extends StatelessWidget {
  customCategoryCompnentInRequestAContractor({super.key, required this.productName,required this.onTap});

  final String productName;
  VoidCallback onTap ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width/5,
        height: MediaQuery.of(context).size.height/13,
        decoration: BoxDecoration(
          color: OColors.white,
          border: Border.all(
            width: 0.2.w,
                color: OColors.grey2
          ),
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: OColors.black.withOpacity(0.12),
              blurRadius: 0.r,
              offset: const Offset(0, 1),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Builder(
          builder: (context) {
            return Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(OImages.appLogoIcon,width: OSizes.imageSize),
                SizedBox(height: OSizes.spaceBtwTexts2),

                Text(productName,style: Theme.of(context).textTheme.bodyLarge,)
              ],
            );
          }
        ),
      ),
    );
  }
}