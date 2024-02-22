import '../../../utils/constants/exports.dart';

class ShreTheAppScreen extends StatelessWidget {
   ShreTheAppScreen({Key? key}) : super(key: key);
TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white,),
        title: Text("Share the app", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OSizes.spaceBtwItems),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Image.asset(OImages.giftBox),
                SizedBox(height: OSizes.spaceBtwItems),
                Text("Get 10 pounds free credit",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.iconCall)),
              SizedBox(height: OSizes.spaceBtwItems),
              Text("20 pounds when they order. Share the application and give your friends 10 pounds for any service, and you will get the credit for completing the order."),
              SizedBox(height: OSizes.spaceBtwItems),
              Row(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: OColors.primary,
                      borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
                    ),
                    child: const Icon(Iconsax.share, color: OColors.white),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(child: CustomTextFormField4(textEditingController: controller, labelText: '5847GQ54', suffixIcon: const Icon(Icons.copy, color: OColors.primary))),
                ],
              ),
              Padding(
                padding:  EdgeInsets.all(OSizes.spaceBtwItems),
                child: Divider(thickness: 1.2,color: OColors.grey),
              ),
              Image.asset(OImages.invite),
              SizedBox(height: OSizes.spaceBtwItems),
              Text("If you were invited by a friend",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.iconCall)),
              SizedBox(height: OSizes.spaceBtwItems),
              Text("Please enter your friend's invite code here"),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: OSizes.spaceBtwItems * 4,
                    vertical: OSizes.spaceBtwItems),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: controller,
                  keyboardType: TextInputType.name,
                  expands: false,
                  decoration: InputDecoration(
                    hintText: "Enter the code",
                    hintStyle: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: OColors.grey2),
                  ),
                  validator: (value) => OFormatter.formatUserName(value),
                ),
              ),
              SizedBox(height: OSizes.spaceBtwItems * 2),
              CustomButton2(text: "application", onTap: (){},height: OSizes.imageSize * 1.3)
            ],
          ),
        ),
      ),

    );
  }
}
