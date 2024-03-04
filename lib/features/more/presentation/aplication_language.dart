import '../../../utils/constants/exports.dart';

class ApplicationLanguageScreen extends StatelessWidget {
  const ApplicationLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    return Scaffold(
      appBar: OAppBar(
        title: Text("Application language",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white),),
        centerTitle: true,
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white,),
      ),
      body: Padding(
        padding: EdgeInsets.all(OSizes.spaceBtwTexts2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: OSizes.spaceBtwItems),
            Expanded(
              child: ListView.builder(
                  itemCount: OConstants.applicationLanguage.length,
                  itemBuilder: (context,index){
                    return GestureDetector(
                        onTap: (){},
                        child: CustomContainerHelpCenter(textHelpCenter: OConstants.applicationLanguage[index]));
                  }),
            )

          ],
        ),
      ),
    );
  }
}
