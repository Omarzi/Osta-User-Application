import '../../../utils/constants/exports.dart';

class TechnicalSupportChatScreen extends StatelessWidget {
  const TechnicalSupportChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(icon: Icon(Icons.arrow_back, size: 23.sp, color: OColors.white),onPressed: (){context.pop();}),
        title: Text("Technical Support ", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.spaceBtwTexts2 * 1.5,right: OSizes.spaceBtwTexts2 * 1.5),
          child: Column(
            children: [
              const CustomTopContainerInTechnicalSupport(),
              SizedBox(height: OSizes.spaceBtwTexts2),
              const CustomSendFromUser(),
              SizedBox(height: OSizes.spaceBtwTexts2),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomSendFromTechnicalSupport(),
                ],
              ),
              SizedBox(height: OSizes.spaceBtwTexts2),
              const CustomSendFromUser(),
              SizedBox(height: OSizes.spaceBtwTexts2),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomSendFromTechnicalSupport(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: height / 13,
          child:  CustomButtomNavigationInChat()),

    );
  }
}
