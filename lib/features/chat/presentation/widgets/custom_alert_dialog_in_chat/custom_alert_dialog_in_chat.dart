import 'package:dotted_border/dotted_border.dart';
import '../../../../../utils/constants/exports.dart';

class CustomAlertDialogInChat extends StatelessWidget {
  const CustomAlertDialogInChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: false,
      backgroundColor: OColors.white,
      title: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: (){
                  context.pop();
                },
                child: CircleAvatar(
                  radius: 15.r,
                  backgroundColor: OColors.grey,
                  child: Center(
                    child: Icon(Icons.close,color: OColors.grey2,size: 20.sp,),
                  ),
                ),
              ),
            ],
          ),
          DottedBorder(
            strokeWidth: 2,
            color: OColors.primary,
            borderType: BorderType.Circle,
            radius: Radius.circular(12),
            padding: EdgeInsets.all(6),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: CircleAvatar(
                  backgroundColor: OColors.warning2,
                  radius: 50.r,
                  child: Center(
                    child: Image.asset(OImages.close),
                  ),
                )
            ),
          ),
        ],
      ),
      content: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('AlertDialog description',
          style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),

    );
  }
}
