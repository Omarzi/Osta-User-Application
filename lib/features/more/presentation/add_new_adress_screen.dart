import '../../../utils/constants/exports.dart';

class AddNewAddressScreen extends StatefulWidget {
   const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  TextEditingController controller = TextEditingController();
  String selectedCountryCode = '+20';
  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: OAppBar(
        title: Text("Add new address",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white)),
        centerTitle: true,
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OSizes.spaceBtwItems),
          child: Column(
            children: [
              /// Search
              CustomTextFormField1(hintText: "Type the address", controller: controller, suffixIcon: Icons.search,suffixIconColor: OColors.blue),
              /// Map
              SizedBox(height: OSizes.imageSize * 5),
              ///Form Data
              Form(
                child: Column(
                  children: [
                    CustomTextFormField1(hintText: "the job", controller: controller,
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
                    CustomTextFormField1(hintText: "Egypt", controller: controller,
                      label: SizedBox(
                        width: width / 4,
                        child: Row(
                          children: [
                            Text("Country",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
                            SizedBox(width: OSizes.spaceBtwTexts2),
                            Text("*",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: OColors.warning3),),
                          ],
                        ),
                      ),
                      suffixIcon: Icons.keyboard_arrow_down,
                      suffixIconColor: OColors.warning3,
                      onTab: (){
                        CustomPopupMenu(textWidget: Text(selectedCountryCode.toString()), onSelected: (String value) => setState(() => selectedCountryCode = value));
                      },
                    ),
                    SizedBox(height: OSizes.spaceBtwItems),
                    CustomTextFormField1(hintText: "Cairo", controller: controller,
                      label: SizedBox(
                        width: width / 3.5,
                        child: Row(
                          children: [
                            Text("Governorate",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
                            SizedBox(width: OSizes.spaceBtwTexts2),
                            Text("*",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: OColors.warning3),),
                          ],
                        ),
                      ),
                      suffixIcon: Icons.keyboard_arrow_down,
                      suffixIconColor: OColors.warning3,
                      onTab: (){
                        CustomPopupMenu(textWidget: Text(selectedCountryCode.toString()), onSelected: (String value) => setState(() => selectedCountryCode = value));
                      },
                    ),
                    SizedBox(height: OSizes.spaceBtwItems),
                    CustomTextFormField1(hintText: "Maadi", controller: controller,
                      label: SizedBox(
                        width: width / 4.4,
                        child: Row(
                          children: [
                            Text("Region",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
                            SizedBox(width: OSizes.spaceBtwTexts2),
                            Text("*",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: OColors.warning3),),
                          ],
                        ),
                      ),
                      suffixIcon: Icons.keyboard_arrow_down,
                      suffixIconColor: OColors.warning3,
                      onTab: (){
                        CustomPopupMenu(textWidget: Text(selectedCountryCode.toString()), onSelected: (String value) => setState(() => selectedCountryCode = value));
                      },
                    ),
                    SizedBox(height: OSizes.spaceBtwItems),
                    CustomTextFormField1(hintText: "Next to the metro, 7th street", controller: controller,
                      label: SizedBox(
                        width: width / 4.4,
                        child: Row(
                          children: [
                            Text("Street",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
                            SizedBox(width: OSizes.spaceBtwTexts2),
                            Text("*",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: OColors.warning3),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: OSizes.spaceBtwItems),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField1(hintText: "12", controller: controller,
                            label: SizedBox(
                              width: width / 2.8,
                              child: Row(
                                children: [
                                  Text("Apartment/Villa",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
                                  SizedBox(width: OSizes.spaceBtwTexts2),
                                  Text("*",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: OColors.warning3),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: OSizes.spaceBtwItems),
                        Expanded(
                          child: CustomTextFormField1(hintText: "5", controller: controller,
                            label: SizedBox(
                              width: width / 4,
                              child: Row(
                                children: [
                                  Text("Villa/Floor",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
                                  SizedBox(width: OSizes.spaceBtwTexts2),
                                  Text("*",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: OColors.warning3),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: OSizes.spaceBtwItems),
                    CustomTextFormField1(hintText: "Beside KFC Restaurant", controller: controller,
                      label: SizedBox(
                        width: width / 3.5,
                        child: Row(
                          children: [
                            Text("special marque",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue),),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems),
              /// Button
              CustomButton2(onTap: (){
              },text: "Save",height: OSizes.imageSize * 1.3),
            ],
          ),
        ),
      ),

    );
  }
}