import '../../../utils/constants/exports.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);
 TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(
            onPressed: () => context.pushNamed(ORoutesName.chatRoute),
            icon: Badge.count(count: 0, backgroundColor: const Color(0xffE5CC13), textColor: OColors.black, child: const Icon(Iconsax.notification)),
            color: OColors.white),
        title: SvgPicture.asset(OImages.appIcon, height: 26.h),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Iconsax.location, size: 23.sp), color: OColors.white,onPressed: (){context.pushNamed(ORoutesName.addressRoute);}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(OSizes.spaceBtwItems),
          child: Column(
            children: [
              SizedBox(height: OSizes.spaceBtwItems),
              CustomTextFormField1(label: const Text("Name"), hintText: "Amira Adel", controller: controller,suffixIcon: Iconsax.user_edit),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems),
              CustomPhoneTextFormField(hintText: "01061489546"),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems),
              CustomTextFormField1(label:const Text( "Email"), hintText: "amira@gmail.com", controller: controller,suffixIcon: Iconsax.direct),
              SizedBox(height: OSizes.spaceBtwItems),
              CustomButton2(text: "Save", onTap: (){},height: OSizes.imageSize * 1.3),
              SizedBox(height: OSizes.spaceBtwItems),
              CustomButtonWithIcon(onTap: (){context.pushNamed(ORoutesName.modifyPasswordRoute); }, textButton: "Modify password", icon: OImages.lockClosedIcon,width: width,)

            ],
          ),
        ),
      ),

    );
  }
}
