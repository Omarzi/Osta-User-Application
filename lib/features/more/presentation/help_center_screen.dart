import '../../../utils/constants/exports.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    return Scaffold(
      appBar: OAppBar(
        title: Text("Help Center",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white),),
        centerTitle: true,
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white,),
      ),
        body: Padding(
        padding: EdgeInsets.all(OSizes.spaceBtwTexts2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: OSizes.spaceBtwItems),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello Amira Adel",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.iconCall)),
                SizedBox(height: OSizes.spaceBtwTexts2),
                Text("How can we help you?",style: Theme.of(context).textTheme.headlineMedium),
              ],
            ),
          ),
            SizedBox(height: OSizes.spaceBtwItems),
            Expanded(
              child: ListView.builder(
                itemCount: OConstants.textOfHelpCenter.length,
                  itemBuilder: (context,index){
                    return GestureDetector(
                        onTap: (){
                          index == 0 ? context.pushNamed(ORoutesName.specificHelpCenterRoute,arguments:OConstants.textOfHelpCenter[0]): Container();
                        },
                        child: CustomContainerHelpCenter(textHelpCenter: OConstants.textOfHelpCenter[index]));
                  }),
            )

          ],
        ),
      ),
    );
  }
}
