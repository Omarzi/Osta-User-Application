import '../../../utils/constants/exports.dart';

class ServiceRequestsScreen extends StatefulWidget {
  const ServiceRequestsScreen({Key? key}) : super(key: key);

  @override
  State<ServiceRequestsScreen> createState() => _ServiceRequestsScreenState();
}

class _ServiceRequestsScreenState extends State<ServiceRequestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Make Size
        SizedBox(height: OSizes.spaceBtwItems),
        CustomContainerMyOrder(title: "Confirmed",image: OImages.checkMarkDoneCircle,color: OColors.bgContainerInMyOrder1,textColor: OColors.textInMyOrder1,isChecked: false),
        /// Make Size
        SizedBox(height: OSizes.spaceBtwItems),
        CustomContainerMyOrder(title: "in the way",image: OImages.checkMarkDoneCircle,color: OColors.bgContainerInMyOrder1,textColor: OColors.textInMyOrder1,isChecked: false),
        /// Make Size
        SizedBox(height: OSizes.spaceBtwItems),
        CustomContainerMyOrder(title: "Request completed",image: OImages.checkMarkDoneCircle,color: OColors.bgContainerInMyOrder1,textColor: OColors.textInMyOrder1,isChecked: false,
          widget:
          RatingBar(
            initialRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 15.sp,
            ratingWidget: RatingWidget(
                full: const Icon(Icons.star, color: OColors.gold),
                half: const Icon(Icons.star_half, color: OColors.gold),
                empty: const Icon(Icons.star, color: Colors.grey)),
           onRatingUpdate: (value) {
              setState(() {
              });
            },
          ),
        ),
        /// Make Size
        SizedBox(height: OSizes.spaceBtwItems),
        CustomContainerMyOrder(title: "Request completed",image: OImages.checkMarkDoneCircle,color: OColors.bgContainerInMyOrder1,textColor: OColors.textInMyOrder1,isChecked: true),
        SizedBox(height: OSizes.spaceBtwItems),
        CustomContainerMyOrder(title: "was canceled",image: OImages.redClose,color: OColors.bgErrorContainer,textColor: OColors.textError,isChecked: true),
        SizedBox(height: OSizes.spaceBtwItems),
        const CustomContainerMyOrder2(),
      ],
    );
  }
}
