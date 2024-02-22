import '../../../../../utils/constants/exports.dart';

class CustomOrderData extends StatelessWidget {
   CustomOrderData({Key? key, required this.map }) : super(key: key);
   Map<String, dynamic> map;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      child: Expanded(
        flex: 4,
        child: Container(
          width: width,
          padding: EdgeInsets.all(OSizes.spaceBtwItems),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
            color: OColors.white,
            border: Border.all(
              width: 0.2.w,
              color: OColors.grey3
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Order Number :${map['orderNumber']}",style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: OSizes.spaceBtwTexts),
              Text("Number of stores: ${map['numberOfStores']}",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
              SizedBox(height: OSizes.spaceBtwTexts),
              Text("02/22/2022 - 03:30PM",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.grey),)

            ],
          ),
        ),
      ),
    );
  }
}
