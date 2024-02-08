import '../../../utils/constants/exports.dart';

class CustomButtonMajorInApp extends StatelessWidget {
   CustomButtonMajorInApp({super.key, required this.text,this.width});

  final String text;
  double? width =double.infinity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: ODeviceUtils.getScreenWidth(context) * .06),
      width: width,
      height: 50.h,
      child: ElevatedButton(
          onPressed: () =>
              context.pushReplacementNamed(ORoutesName.navigationMenuRoute),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: OColors.white, height: .5.h),
          )),
    );
  }
}
