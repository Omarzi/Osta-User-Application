import 'package:osta_app/features/more/presentation/service_provider_screen.dart';

import '../../../utils/constants/exports.dart';

class BeAPartnerScreen extends StatefulWidget {
   BeAPartnerScreen({Key? key}) : super(key: key);

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
        title: Text("Be a partner",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white),),
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
                    color1: Color(0xFFF8AE00),color2: Color(0xFFFECC00),),
                  SizedBox(width:OSizes.spaceBtwItems,),
                  CustomButton3(text:"service provider", onTap: (){setState(() {isPressed= true;});}, width:width/2.3, height:height/13,
                    color1:Color(0xFFF8AE00),color2 :Color(0xFFFECC00)),
                ],
              ),
              SizedBox(height: OSizes.spaceBtwItems),
           isPressed? ServiceProviderScreen(): TraderScreen()

            ],
          ),
        ),
      ),

    );
  }
}
