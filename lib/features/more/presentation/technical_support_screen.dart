import '../../../utils/constants/exports.dart';

class TechnicalSupportScreen extends StatelessWidget {
  const TechnicalSupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white),
        title: Text("Technical Support ", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OSizes.spaceBtwItems),
          child: Column(
            children: [
                  CustomContainerForSupportScreen(checked: true),
                  SizedBox(height: OSizes.spaceBtwItems),
                  CustomContainerForSupportScreen(checked: false)
            ],
          ),
        ),
      ),
    );
  }
}
