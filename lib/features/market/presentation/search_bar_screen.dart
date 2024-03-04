import '../../../utils/constants/exports.dart';

class SearchBarScreen extends StatefulWidget {
   SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _ListViewSearchExampleState();
}

class _ListViewSearchExampleState extends State<SearchBarScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(icon: Icon(Icons.arrow_back, size: 23.sp, color: OColors.white),onPressed: (){context.pop();},),
        title: Text("", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.white)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Badge.count(count: 5, backgroundColor: const Color(0xffE5CC13), textColor: OColors.black, child: Icon(Iconsax.shopping_cart, size: 25.sp)), color: OColors.white),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.spaceBtwTexts2,right: OSizes.spaceBtwTexts2),
        child: Column(
          children: [
            /// Search
            CustomTextFormFieldSearch(controller: controller ,hintText: "Search for product, dealer name",suffixIcon: const Icon(Icons.search),suffixIconColor: OColors.textInMyOrder1),
          ],
        ),
      ),
    );
  }
}