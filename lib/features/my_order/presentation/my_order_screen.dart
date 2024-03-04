import '../../../utils/constants/exports.dart';

class MyOrderScreen extends StatefulWidget {
   const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChatScreen()));
        }, icon: Badge.count(count: 0, backgroundColor: const Color(0xffE5CC13), textColor: OColors.black, child: const Icon(Iconsax.notification)), color: OColors.white),
        title: SvgPicture.asset(OImages.appIcon, height: 26.h),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Iconsax.location, size: 23.sp), color: OColors.white,onPressed: (){context.pushNamed(ORoutesName.addressRoute);}),
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
                    color1: isPressed == false ? const Color(0xFFF8AE00) : const Color(0xFFF3F3F3), color2:isPressed == false ? const Color(0xFFFECC00) : const Color(0xFFF3F3F3),
                    colorTextButton: isPressed == false? OColors.white : OColors.black,
                  ),
                  SizedBox(width:OSizes.spaceBtwItems),
                  CustomButton3(text:"Market requests", onTap: (){
                    // Navigator.pushNamed(context, ORoutesName.marketRoute);
                   setState(() {
                     isPressed = true;
                   });
                  }, width:width/2.3, height:height/13,
                    color1: isPressed == true?const Color(0xFFF8AE00):const Color(0xFFF3F3F3),color2:isPressed == true ?const Color(0xFFFECC00): const Color(0xFFF3F3F3),
                    colorTextButton: isPressed == true ? OColors.white : OColors.black,
                  ),
                ],
              ),
              // ServiceRequestsScreen(),
            isPressed == true ? const MarketRequestScreen() : const ServiceRequestsScreen(),

            ],
          ),
        ),
      ),

    );
  }
}
