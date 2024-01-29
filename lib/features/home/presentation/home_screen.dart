import 'package:osta_app/utils/constants/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(onPressed: () {}, icon: Badge.count(count: 0, backgroundColor: const Color(0xffE5CC13), textColor: OColors.black, child: const Icon(Iconsax.notification)), color: OColors.white),
        title: SvgPicture.asset(OImages.appIcon, height: 26.h),
        centerTitle: true,
        actions: [
          Icon(Iconsax.location, size: 23.sp, color: OColors.white),
          SizedBox(width: OSizes.spaceBetweenIcon),
          Text('Home', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600, color: OColors.white)),
          SizedBox(width: OSizes.sm),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Slider
            const CustomSlider(),

            /// Two Categories (Market - Make Request A Contractor)

            /// All Another Categories
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10.w, mainAxisSpacing: 10.h),
               shrinkWrap: true,
               itemCount: 12,
               itemBuilder: (context, index) {
                return const ProductComponent(productName: 'Electrics');
              },
            ),
          ],
        ),
      ),
    );
  }
}