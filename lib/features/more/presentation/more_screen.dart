import 'package:osta_app/utils/constants/exports.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
=======
      /// AppBar
>>>>>>> bb7c7c4 (first commit)
      appBar: OAppBar(
        title: SvgPicture.asset(OImages.appIcon, height: 26.h),
        centerTitle: true,
      ),
<<<<<<< HEAD
=======
      /// Body
>>>>>>> bb7c7c4 (first commit)
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: OSizes.padding),
          child: Column(
          children: [
            /// Make Some Space
            SizedBox(height: OSizes.defaultSpace),
            /// Login Button
            CustomButton(buttonText: "singIn".tr(context), onPressed: () {context.pushNamed(ORoutesName.allDataLoginRoute);}),

            /// Make Some Space
            SizedBox(height: OSizes.defaultSpace),

            /// ListTile
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CustomContainerInMore(text: OConstants.texts[index], imagePath: OConstants.images[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: OSizes.defaultSpace);
              },
              itemCount: 8,
            ),
          ],
        ),
        ),
      ),
    );
  }
}