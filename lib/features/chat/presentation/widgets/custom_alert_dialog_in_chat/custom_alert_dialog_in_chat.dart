import 'package:dotted_border/dotted_border.dart';
import '../../../../../utils/constants/exports.dart';

class CustomAlertDialogInChat extends StatelessWidget {
   CustomAlertDialogInChat({Key? key,required this.text,required this.image,required this.dottedColor,required this.bgCircle}) : super(key: key);
 String text;
 String image;
 Color dottedColor;
 Color bgCircle;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: false,
      backgroundColor: OColors.white,
      title: Column(
        children: [
          const CustomCloseButton(),
          DottedBorder(
            strokeWidth: 2,
            color: dottedColor,
            borderType: BorderType.Circle,
            radius: const Radius.circular(12),
            padding: const EdgeInsets.all(6),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: CircleAvatar(
                  backgroundColor: bgCircle,
                  radius: 50.r,
                  child: Center(
                    child: Image.asset("$image"),
                  ),
                )
            ),
          ),
        ],
      ),
      content: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200.w,
            child: Text(text,
            style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),

    );
  }
}
