
import '../../../../../utils/constants/exports.dart';

class CustomTimeInBottomSheet extends StatefulWidget {
   CustomTimeInBottomSheet({Key? key}) : super(key: key);

  @override
  State<CustomTimeInBottomSheet> createState() => _CustomTimeInBottomSheetState();
}
class _CustomTimeInBottomSheetState extends State<CustomTimeInBottomSheet> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
            color: OColors.white
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/time.png",width: 30.w,),
          hourMinute12H(),
        ],
      ),
    );
  }
  Widget hourMinute12H() {
    return new TimePickerSpinner(
      highlightedTextStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OColors.primary),
      normalTextStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OColors.grey2),
      spacing: 1,
      is24HourMode: false,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }
}
