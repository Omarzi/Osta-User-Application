import 'package:osta_app/utils/constants/exports.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ODeviceUtils.getScreenHeight(context) * .26,
        width: ODeviceUtils.getScreenWidth(context),
        alignment: AlignmentDirectional.center,
        /// Decoration
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            /// Make Space
            SizedBox(height: 20.h),
            /// Banner
            CarouselSlider.builder(
              itemBuilder: (BuildContext context, int index, int i) {
                // return CachedImage(
                //   link: 'assets/images/banner.png',
                //   width: 400.w,
                //   borderRadius: 25.r,
                //   fit: BoxFit.cover,
                // );
                // return ClipRRect(borderRadius: BorderRadius.circular(16.r), child: Image.asset(bannerImage, width: 400.w, fit: BoxFit.cover));
                return ClipRRect(borderRadius: BorderRadius.circular(16.r), child: Image.asset(OConstants.bannersList[index], width: 400.w, fit: BoxFit.cover));
              },
              itemCount: OConstants.bannersList.length,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.1,
                enlargeCenterPage: true,
                // onPageChanged: homeCubit.onPageChangedSlider,
              ),
            ),
          ],
        ),
      );
  }
}
