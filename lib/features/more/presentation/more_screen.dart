import 'package:osta_app/utils/constants/exports.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// AppBar
      appBar: OAppBar(
        title: SvgPicture.asset(OImages.appIcon, height: 26.h),
        centerTitle: true,
      ),

      /// Body
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
                return CustomContainerInMore(text: OConstants.texts[index], imagePath: OConstants.images[index],
                    onTap: (){
                 index == 0 ? context.pushNamed(ORoutesName.walletRoute):
                 index == 1 ? context.pushNamed(ORoutesName.addressRoute):
                 index == 2 ? context.pushNamed(ORoutesName.beAPartnerRoute):
                 index == 3 ? context.pushNamed(ORoutesName.technicalSupportRout):
                 index == 4 ? context.pushNamed(ORoutesName.helpCenterRoute):
                 index == 5 ? context.pushNamed(ORoutesName.submitProposalsRoute):
                 index == 6 ? context.pushNamed(ORoutesName.termsOfUseRoute):
                 index == 8 ? context.pushNamed(ORoutesName.shareTheAppRoute):
                 index == 10 ? context.pushNamed(ORoutesName.notificationRoute):
                              Container();


                });
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: OSizes.defaultSpace);
              },
              itemCount: OConstants.texts.length,
            ),
          ],
        ),
        ),
      ),
    );
  }
}