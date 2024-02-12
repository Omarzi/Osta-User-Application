import 'package:osta_app/features/request_a_contractor/presentation/widget/custom_category_compnent_in_request_a_contractor/custom_category_compnent_in_request_a_contractor.dart';

import '../../../utils/constants/exports.dart';

class HomeOfRequestAContractor extends StatelessWidget {
  const HomeOfRequestAContractor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(onPressed: (){context.pop();},icon: const Icon(Icons.arrow_back,color: OColors.white,),),
        title:Text("Request a contractor", style: Theme.of(context).textTheme.headlineSmall!.copyWith( color: OColors.white)),
        centerTitle: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: OSizes.spaceBtwItems,left:  OSizes.spaceBtwTexts2 ,right:  OSizes.spaceBtwTexts2 ),
          child: Column(
            children: [
              /// Head of Screen
               CustomHeadInSpecificCategory(),
              /// dotted Divider
              CustomDotsDivider(),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems,),
              /// Category
              GridView.builder(
                padding:  EdgeInsets.only(left:OSizes.spaceBetweenIcon ,right: OSizes.spaceBetweenIcon,),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: 1/0.70
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return  customCategoryCompnentInRequestAContractor(productName: OConstants.categoryInRequestAContactor[index],onTap: (){
                    Navigator.pushNamed(context, ORoutesName.specificCategoryRoute,arguments: OConstants.category[index]);
                  },);
                },
                itemCount:OConstants.categoryInRequestAContactor.length,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
