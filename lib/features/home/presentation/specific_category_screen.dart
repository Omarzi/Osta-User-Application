import '../../../utils/constants/exports.dart';

class SpecificCategoryScreen extends StatefulWidget {
   SpecificCategoryScreen({Key? key,required this.title}) : super(key: key);
   String title;

  @override
  State<SpecificCategoryScreen> createState() => _SpecificCategoryScreenState();
}

class _SpecificCategoryScreenState extends State<SpecificCategoryScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
    leadingWidget: IconButton(onPressed: (){context.pop();},icon: const Icon(Icons.arrow_back,color: OColors.white)),
        title:Text(widget.title, style: Theme.of(context).textTheme.headlineSmall!.copyWith( color: OColors.white)),
        centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left:OSizes.spaceBetweenIcon ,right: OSizes.spaceBetweenIcon, top:10.h),
        child: Column(
            children: [
              /// Make Head
              const CustomHeadInSpecificCategory(),
              /// Make Divider
              const CustomDotsDivider(),
              ///Custom Center
              const CustomCenterInSpecificCategory(),
              /// Make Divider
              const CustomDotsDivider(),
              ///Text Form Field For Description of the problem
              const CustomContainerDescriptionOfTheProblem(),
              /// Make Divider
              const CustomDotsDivider(),
              /// Discount Code
              const CustomDiscountCode(),
              /// Make Space
              SizedBox(height: OSizes.spaceBtwItems),
              /// Bottom Container
              // const CustomBottomInSpecificCategory(),

            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomInSpecificCategory()
    );
  }
}
