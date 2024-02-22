import '../../../utils/constants/exports.dart';

class DetailsOfProductInMaket extends StatelessWidget {
  const DetailsOfProductInMaket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(icon: Icon(Icons.arrow_back, size: 23.sp, color: OColors.white),onPressed: (){context.pop();},),
        title: Text(" ", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.white)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Badge.count(count: 5, backgroundColor: const Color(0xffE5CC13), textColor: OColors.black, child: SvgPicture.asset(OImages.cartIcon,width: 30.w,)), color: OColors.white),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: OSizes.spaceBtwItems,left: OSizes.spaceBtwItems,right: OSizes.spaceBtwItems),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const CustomHeadDetailsProductInMarket(),
              SizedBox(height: OSizes.spaceBtwTexts2),
              const Divider(color: OColors.grey,),
              SizedBox(height: OSizes.spaceBtwTexts2,),
              Text("the description",style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: OColors.blue),),
              SizedBox(height: OSizes.spaceBtwTexts2,),
              Text("Lorem Ipsum is a method of transcribing text in graphic design, commonly used to illustrate the visual appearance of a document. Lorem Ipsum is a method of transcribing text in graphic design.",style: Theme.of(context).textTheme.titleMedium),
                SizedBox(height: OSizes.spaceBtwItems * 2),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButtonWithIcon(onTap: (){Navigator.pushNamed(context, ORoutesName.shoppingCartRoute);},textButton: "Add to cart",icon: OImages.cartIcon,width: width /1.2 ),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
