import 'package:osta_app/features/chat/presentation/chat_screen.dart';
import 'package:osta_app/utils/constants/exports.dart';

import 'widgets/custom_containers_in_center/custom_containers_in_center.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          Text('Home', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600, color: OColors.white)),
          SizedBox(width: OSizes.sm),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Slider
            const CustomSlider(),
            /// Two Categories (Market - Make Request A Contractor)
             Row(
               children: [
                 CustomContainerInCenter(color1:Color(0xFFF9B501),color2: Color(0xFFFBC62E),title: "Make Request A Contractor",image: "${OImages.makeRequestAContractor}",),
                 CustomContainerInCenter(color1: Color(0xFF2ED3C1), color2: Color(0xFF33B4E5),title: "Market",image: "${OImages.market}",),

               ],
             ),

            /// All Another Categories
            GridView.builder(
              padding:  EdgeInsets.only(left:OSizes.spaceBetweenIcon ,right: OSizes.spaceBetweenIcon,),
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10.w, mainAxisSpacing: 10.h),
               shrinkWrap: true,
               itemCount: 12,
               itemBuilder: (context, index) {
                return  ProductComponent(productName: OConstants.category[index],color: OConstants.colors[index],onTap: (){
                  Navigator.pushNamed(context, ORoutesName.specificCategoryRoute,arguments: OConstants.category[index]);
                },);
              },
            ),
          ],
        ),
      ),
    );
  }
}