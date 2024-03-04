import '../../../utils/constants/exports.dart';

class SubmitProposalsScreen extends StatelessWidget {
   SubmitProposalsScreen({Key? key}) : super(key: key);
 TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white),
        title: Text("Submit proposals", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OSizes.spaceBtwTexts2),
          child: Column(
            children: [
              /// Make size
              SizedBox(height: OSizes.spaceBtwItems),
              /// Social media
              CustomSocialButton(),
              SizedBox(height: OSizes.spaceBtwItems * 2),
              Form(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts2),
                  child: Column(
                    children: [
                      CustomTextFormField1(hintText: "Enter Name", controller: controller,label:
                      Text("Name",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                      ),
                      SizedBox(height: OSizes.spaceBtwItems * 1.2),
                      CustomTextFormField1(
                        suffixIcon: Iconsax.direct,
                        hintText: "user@gmail.com", controller: controller,label:
                      Text("E-mail",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue))),
                      /// Make Size
                      SizedBox(height: OSizes.spaceBtwItems),
                      CustomPhoneTextFormField(hintText: "01061489546"),
                      /// Make Size
                      SizedBox(height: OSizes.spaceBtwItems),
                      CustomTextFormField1(hintText: "Write your suggestions here", controller: controller,label: Text("Your suggestions",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),maxLines: 7,)  ],
                  ),
                ),
              ),
              SizedBox(height: OSizes.spaceBtwItems * 2),
              CustomButton2(text: "Send", onTap: (){},height: OSizes.imageSize * 1.3)
            ],
          ),
        ),
      ),

    );
  }
}
