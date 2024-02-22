import '../../../utils/constants/exports.dart';

class MarketRequestScreen extends StatelessWidget {
  const MarketRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: OSizes.spaceBtwItems,),
        CustomHeadInMarketRequest(),
        SizedBox(height: OSizes.spaceBtwItems),
        CustomContainerShowAllOrder(numberOfStores:"1",orderNumer: "12345",
            onTap: (){
          context.pushNamed(ORoutesName.detailsOfMyOrderRoute,arguments: {
              'orderNumber': "12345",
              'numberOfStores': "12345",
            } );}),
        CustomContainerShowAllOrder(numberOfStores:"2",orderNumer:"678910" ,onTap: (){}),
      ],
    );
  }
}
