import '../../../utils/constants/exports.dart';

class TermsOfUseScreen extends StatelessWidget {
  const TermsOfUseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white,),
        title: Text("Terms of use", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OSizes.spaceBtwItems),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 Text("How to use the application",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                SizedBox(height: OSizes.spaceBtwTexts2),
                Text("Lorem Ipsum is simply dummy text in the sense that its purpose is"
                     "Form, not content, is used in the printing and printing industries"
                     "Publishing. Lorem Ipsum was and continues to be the standard for dummy text ever since"
                     "The fifteenth century, when an unknown printing press was established"
                     "Draw a set of letters randomly",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.textgrey),
                ),
                SizedBox(height: OSizes.spaceBtwItems),
                Text("Firstly",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                SizedBox(height: OSizes.spaceBtwTexts2),
                Text("Lorem Ipsum is simply dummy text in the sense that its purpose is"
                     "Form, not content, is used in the printing and printing industries"
                      "Publishing. Lorem Ipsum was and continues to be the standard for dummy text ever since"
                       "XV century",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.textgrey)
                ),
               SizedBox(height: OSizes.spaceBtwTexts2),
               Text("secondly",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
              SizedBox(height: OSizes.spaceBtwTexts2),
              Text("Lorem Ipsum is simply dummy text in the sense that its purpose is"
                   "Form, not content, is used in the printing and printing industries"
                   "Publishing. Lorem Ipsum was and still is the standard text",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.textgrey)

              )
            ],
          ),
        ),
      ),
    );
  }
}
