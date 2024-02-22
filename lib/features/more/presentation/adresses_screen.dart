import '../../../utils/constants/exports.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    return Scaffold(
      appBar: OAppBar(
        title: Text("Addresses",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white),),
        centerTitle: true,
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(OSizes.spaceBtwItems),
          child: Column(
            children: [
              CustomContainerAdress1(isChecked: false,onTap: (){context.pushNamed(ORoutesName.chooseaAddressRoute);},)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal:OSizes.spaceBtwItems,vertical: OSizes.spaceBtwTexts),
        child: CustomButtonWithIcon(onTap: (){
          context.pushNamed(ORoutesName.addNewAddressRoute);
        },textButton: "Add a new address",icon: OImages.plusIcon),
      ),

    );
  }
}
