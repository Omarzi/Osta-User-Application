
import 'package:osta_app/features/my_order/presentation/market_requests_screen.dart';

import '../../../common/widgets/button/custom_button_3.dart';
import '../../../utils/constants/exports.dart';

class MyOrderScreen extends StatefulWidget {
   MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  bool isPressed=false;

  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
        }, icon: Badge.count(count: 0, backgroundColor: const Color(0xffE5CC13), textColor: OColors.black, child: const Icon(Iconsax.notification)), color: OColors.white),
        title: SvgPicture.asset(OImages.appIcon, height: 26.h),
        centerTitle: true,
        actions: [
          Icon(Iconsax.location, size: 23.sp, color: OColors.white),
          SizedBox(width: OSizes.spaceBetweenIcon),
          Text('My order', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600, color: OColors.white)),
          SizedBox(width: OSizes.sm),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: OSizes.spaceBtwItems * 1.2, left: OSizes.spaceBtwItems, right: OSizes.spaceBtwItems),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton3(text:"Service requests", onTap: (){
                    setState(() {
                      isPressed = false;
                    });
                  }, width:width/2.3, height:height/13,
                    color1: Color(0xFFF8AE00),color2: Color(0xFFFECC00),),
                  SizedBox(width:OSizes.spaceBtwItems,),
                  CustomButton3(text:"Market requests", onTap: (){
                    // Navigator.pushNamed(context, ORoutesName.marketRoute);
                   setState(() {
                     isPressed = true;
                   });
                  }, width:width/2.3, height:height/13,
                    color1: isPressed == true?Color(0xFFF8AE00):Color(0xFFF3F3F3),color2:isPressed == true ?Color(0xFFFECC00): Color(0xFFF3F3F3),),
                ],
              ),
              // ServiceRequestsScreen(),
            isPressed == true ? MarketRequestScreen() : ServiceRequestsScreen(),

            ],
          ),
        ),
      ),

    );
  }
}
