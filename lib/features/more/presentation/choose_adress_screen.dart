import '../../../utils/constants/exports.dart';

class ChooseAdressScreen extends StatefulWidget {
  const ChooseAdressScreen({Key? key}) : super(key: key);

  @override
  State<ChooseAdressScreen> createState() => _ChooseAdressScreenState();
}

class _ChooseAdressScreenState extends State<ChooseAdressScreen> {
  int selectedOption = 1; // Default selected option

  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    return Scaffold(
      appBar: OAppBar(
        title: Text("Adresses",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white),),
        centerTitle: true,
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(OSizes.spaceBtwItems),
          child: Column(
            children: [
              CustomRadioButtonInAdress(
                listTile: ListTile(
                  leading: Radio(
                    activeColor: OColors.primary,
                    value:1,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption =value!;
                        print(selectedOption);
                      });
                    },
                  ),
                ),
              ),
              CustomRadioButtonInAdress(
                listTile: ListTile(
                  leading: Radio(
                    activeColor: OColors.primary,
                    value:2,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption =value!;
                        print(selectedOption);
                      });
                    },
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal:OSizes.spaceBtwItems,vertical: OSizes.spaceBtwTexts),
        child: CustomButtonWithIcon(onTap: (){},textButton: "Add a new address",icon: OImages.plusIcon),
      ),

    );
  }
}
