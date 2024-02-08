import 'package:osta_app/common/widgets/divider/custom_dots_divider.dart';
import 'package:osta_app/features/home/presentation/widgets/custom_specific_category/custom_container_in_head.dart';

import '../../../../../utils/constants/exports.dart';

class CustomHeadInSpecificCategory extends StatelessWidget {
  const CustomHeadInSpecificCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            height: 47.h,
            width: 349.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color(0xffF3F3F3)),
            child: Center(
              child: Text(
                "What he got with Asta",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Color(0xff2370A2)),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomContainerInHead(
                  color: Color(0xffFFE9EE),
                  image: OImages.completion,
                  title: "completion"),
              CustomContainerInHead(
                  color: Color(0xffC1FAE6),
                  image: OImages.guarantee,
                  title: "quarantee"),
              CustomContainerInHead(
                  color: Color(0xffFFF1CF),
                  image: OImages.quality,
                  title: "Quality"),
            ],
          ),
          SizedBox(height: OSizes.space,),


        ],
      );
  }
}
