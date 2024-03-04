import '../../../../../utils/constants/exports.dart';

class CustomContainerShowAllOrder extends StatelessWidget {
   CustomContainerShowAllOrder({Key? key,required this.numberOfStores,required this.onTap,required this.orderNumber }) : super(key: key);
String numberOfStores, orderNumber;
VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height/5,
          decoration: BoxDecoration(
              color: OColors.white,
            borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
            border: Border.all(
              color: OColors.grey,
              width: 0.5.w
            )
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems,vertical: OSizes.spaceBtwTexts /2 ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(OSizes.borderRadiusLg),topLeft: Radius.circular(OSizes.borderRadiusLg)),
                      color: OColors.bgContainerInMyOrder1
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 17.r,
                          backgroundColor: OColors.textInMyOrder1,
                          child: Image.asset(OImages.appLogoIcon,
                              width: 20.w),
                        ),
                        SizedBox(width: OSizes.spaceBtwTexts2,),
                        Text("Order Number : $orderNumber",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.textInMyOrder1),
                        ),
                      ],
                    ),
                  )
              ),
              Expanded(
                flex: 2,
                  child:Container(
                    padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwItems,vertical: OSizes.spaceBtwTexts),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: OSizes.spaceBtwTexts2,),
                        Text("Number of stores: $numberOfStores ",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.grey),),
                        SizedBox(height: OSizes.spaceBtwTexts),
                        CustomTextOfDetailsMoney2(price:" ",type: "5.205 EGB  "),
                        SizedBox(height: OSizes.spaceBtwTexts),
                        Text("02/22/2022 - 03:30PM",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.grey),)

                      ],
                    ),

                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
