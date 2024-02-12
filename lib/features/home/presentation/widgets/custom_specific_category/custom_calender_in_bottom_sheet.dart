
import '../../../../../utils/constants/exports.dart';

class CustomCalenderInBottomSheet extends StatefulWidget {
   CustomCalenderInBottomSheet({Key? key}) : super(key: key);

  @override
  State<CustomCalenderInBottomSheet> createState() => _CustomCalenderInBottomSheetState();
}

class _CustomCalenderInBottomSheetState extends State<CustomCalenderInBottomSheet> {
  late CalendarDateTime selectedDateTime;

  @override
  void initState() {
    super.initState();
    TimelineCalendar.calendarProvider = createInstance();
    selectedDateTime = TimelineCalendar.calendarProvider.getDateTime();
  }

  @override
  Widget build(BuildContext context) {
    return TimelineCalendar(
      calendarType: CalendarType.GREGORIAN,
      calendarLanguage: "en",
      calendarOptions: CalendarOptions(
        viewType: ViewType.MONTHLY,
        headerMonthElevation: 0,
        headerMonthShadowColor: Colors.white,
      ),
      dayOptions: DayOptions(
          compactMode: true,
          dayFontSize: 10.0,
          disableFadeEffect: true,
          differentStyleForToday: true,
          weekDayUnselectedColor: OColors.grey2,
          weekDaySelectedColor: OColors.grey2,
          todayBackgroundColor: OColors.warning,
          todayTextColor: Colors.white),
      headerOptions: HeaderOptions(
          weekDayStringType: WeekDayStringTypes.SHORT,
          monthStringType: MonthStringTypes.FULL,
          resetDateColor: OColors.grey2,
          navigationColor: OColors.grey2,
          headerTextSize: 10,
          headerTextColor: OColors.grey2),
      onChangeDateTime: (dateTime) {
        selectedDateTime = dateTime;
      },
      onDateTimeReset: (resetDateTime) {
        selectedDateTime = resetDateTime;
      },
      onMonthChanged: (monthDateTime) {
        selectedDateTime = monthDateTime;
      },
      onYearChanged: (yearDateTime) {
        selectedDateTime = yearDateTime;
      },
      dateTime: selectedDateTime,
    );
  }
}
