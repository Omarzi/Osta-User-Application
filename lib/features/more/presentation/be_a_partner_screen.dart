import '../../../utils/constants/exports.dart';

class BeAPartnerScreen extends StatefulWidget {
   const BeAPartnerScreen({Key? key}) : super(key: key);

  @override
  State<BeAPartnerScreen> createState() => _BeAPartnerScreenState();
}

class _BeAPartnerScreenState extends State<BeAPartnerScreen> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: OAppBar(
        title: Text("Be a partner",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white)),
        centerTitle: true,
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OSizes.spaceBtwItems),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton3(text:"trader", onTap: (){setState(() {isPressed = false;});}, width:width/2.3, height:height/13,
                    color1: isPressed == false ? const Color(0xFFF8AE00) : const Color(0xFFF3F3F3), color2:isPressed == false ? const Color(0xFFFECC00) : const Color(0xFFF3F3F3), colorTextButton: isPressed == false ? OColors.white : OColors.black),
                    SizedBox(width:OSizes.spaceBtwItems),
                  CustomButton3(text:"service provider", onTap: (){setState(() {isPressed= true;});}, width:width/2.3, height:height/13,
                    color1: isPressed == true?const Color(0xFFF8AE00):const Color(0xFFF3F3F3),color2:isPressed == true ?const Color(0xFFFECC00): const Color(0xFFF3F3F3), colorTextButton: isPressed == true ? OColors.white : OColors.black),

                    ],
              ),
              SizedBox(height: OSizes.spaceBtwItems),
           isPressed? const ServiceProviderScreen(): const TraderScreen()
            ],
          ),
        ),
      ),

    );
  }
}
