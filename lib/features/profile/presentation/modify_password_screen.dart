import '../../../utils/constants/exports.dart';

class ModifyPasswordScreen extends StatelessWidget {
   ModifyPasswordScreen({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    return Scaffold(
      appBar: OAppBar(
        title: Text("Modify Password",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white),),
        centerTitle: true,
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OSizes.spaceBtwItems),
          child: Column(
            children: [
              SizedBox(height: OSizes.spaceBtwItems * 1.5),
              CustomTextFormFeild3(label: const Text("Current Password"), hintText: "***********", controller: controller,suffixIcon: Iconsax.edit),
              SizedBox(height: OSizes.spaceBtwItems * 1.5),
              CustomTextFormFeild3(label: const Text("New Password"), hintText: "***********", controller: controller,suffixIcon: Icons.visibility),
              SizedBox(height: OSizes.spaceBtwItems * 1.5),
              CustomTextFormFeild3(label: const Text("confirm password"), hintText: "***********", controller: controller,suffixIcon: Icons.visibility),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems,vertical: OSizes.spaceBtwTexts),
        child: CustomButton2(onTap: (){},text: "Save",height: OSizes.imageSize * 1.3),
      ),
    );

  }
}
