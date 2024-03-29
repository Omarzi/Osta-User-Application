import '../../../utils/constants/exports.dart';

class TraderScreen extends StatefulWidget {
   const TraderScreen({Key? key}) : super(key: key);

  @override
  State<TraderScreen> createState() => _TraderScreenState();
}

class _TraderScreenState extends State<TraderScreen> {
  TextEditingController controller = TextEditingController();
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return isPressed ? NextBagOfTrade() :  Column(
      children: [
         Padding(
           padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems),
           child: SizedBox(child: Text("Start now by registering as a trader within Asti to reach millions of subscribers in the shortest possible time", style: Theme.of(context).textTheme.titleLarge,
                   )),
         ),
        SizedBox(height: OSizes.spaceBtwItems * 1.5),
        Form(
            child: Column(
              children: [
                CustomTextFormField1(hintText: "Enter the trade name", controller: controller,
                  label: SizedBox(
                    width: width / 4,
                    child: Row(
                      children: [
                        Text("Title name",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                        SizedBox(width: OSizes.spaceBtwTexts2),
                        Text("*",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: OColors.warning3)),
                      ],
                    ),
                  ),),
                SizedBox(height: OSizes.spaceBtwItems),
                CustomTextFormField1(hintText: "Enter first name", controller: controller,
                  label: SizedBox(
                    width: width / 4,
                    child: Row(
                      children: [
                        Text("First Name",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                        SizedBox(width: OSizes.spaceBtwTexts2),
                        Text("*",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: OColors.warning3)),
                      ],
                    ),
                  ),),
                SizedBox(height: OSizes.spaceBtwItems),
                CustomTextFormField1(
                  hintText: "Enter first name", controller: controller,
                  label: SizedBox(
                    width: width / 3.4,
                    child: Row(
                      children: [
                        Text("Family name",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                        SizedBox(width: OSizes.spaceBtwTexts2),
                        Text("*",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: OColors.warning3)),
                      ],
                    ),
                  ),),
                SizedBox(height: OSizes.spaceBtwItems),
                CustomTextFormField1(
                  hintText: "username@mail.com", controller: controller,
                  label: SizedBox(
                    width: width / 4,
                    child: Row(
                      children: [
                        Text("E-mail",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                        SizedBox(width: OSizes.spaceBtwTexts2),
                        Text("*",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: OColors.warning3)),
                      ],
                    ),
                  ),
                  suffixIcon: Iconsax.direct,
                ),
                /// Make Size
                SizedBox(height: OSizes.spaceBtwItems),
                CustomPhoneTextFormField(hintText: "0000 000 0000"),
                /// Make Size
                SizedBox(height: OSizes.spaceBtwItems),
                CustomTextFormField1(hintText: "Egypt", controller: controller,
                  label: SizedBox(
                    width: width / 4,
                    child: Row(
                      children: [
                        Text("Country",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                        SizedBox(width: OSizes.spaceBtwTexts2),
                        Text("*",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: OColors.warning3)),
                      ],
                    ),
                  ),
                  suffixIcon: Icons.keyboard_arrow_down,
                  suffixIconColor: OColors.warning3,
                ),
                SizedBox(height: OSizes.spaceBtwItems),
                CustomTextFormField1(hintText: "Cairo", controller: controller,
                  label: SizedBox(
                    width: width / 3.5,
                    child: Row(
                      children: [
                        Text("Governorate",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                        SizedBox(width: OSizes.spaceBtwTexts2),
                        Text("*",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: OColors.warning3)),
                      ],
                    ),
                  ),
                  suffixIcon: Icons.keyboard_arrow_down,
                  suffixIconColor: OColors.warning3,
                ),
                SizedBox(height: OSizes.spaceBtwItems),
                CustomTextFormField1(label: const Text("Password"), hintText: "***********", controller: controller,suffixIcon: Iconsax.edit),
                SizedBox(height: OSizes.spaceBtwItems),
                CustomTextFormField1(label: const Text("confirm Password"), hintText: "***********", controller: controller,suffixIcon: Iconsax.edit),
                SizedBox(height: OSizes.spaceBtwItems),
                CustomButton2(onTap: (){
                  setState(() {
                    isPressed =  !isPressed;
                  });
                },text: "The next",height: OSizes.imageSize * 1.3),

              ],

            )
        ),
      ],
    );
  }
}
