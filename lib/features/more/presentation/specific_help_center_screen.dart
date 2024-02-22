import '../../../utils/constants/exports.dart';

class SpecificHelpCenterScreen extends StatelessWidget {
   SpecificHelpCenterScreen({Key? key,required this.title}) : super(key: key);
   String title;
  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;

    return Scaffold(
      appBar: OAppBar(
        title: Text("Help Center",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white),),
        centerTitle: true,
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OSizes.spaceBtwItems),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(height: OSizes.spaceBtwItems),
              Text("Lorem Ipsum is simply dummy text in the sense that its purpose is"
                 " Form, not content, is used in the printing and printing industries"
                  "Publishing. Lorem Ipsum was and continues to be the standard for dummy text ever since"
                  "The fifteenth century, when an unknown printing press was established"
                 " Draw a set of letters randomly \n"
                  "Lorem Ipsum is simply dummy text in the sense that its purpose is"
                  "Form, not content, is used in the printing and printing industries"
                 " Publishing. Lorem Ipsum was and continues to be the standard for dummy text ever since"
                 "XV century",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.textgrey)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems,vertical: OSizes.spaceBtwItems),
                child: Divider(thickness: 1.2,color: OColors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Did you find it useful?",style: Theme.of(context).textTheme.titleLarge)
                ],
              ),
              SizedBox(height: OSizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 CustomContainerHappyOrSad(image: OImages.happy),
                  SizedBox(width: OSizes.spaceBtwItems),
                  CustomContainerHappyOrSad(image: OImages.sad),

                ],
              )
              

            ],
          ),
        ),
      ),
    );
  }
}
