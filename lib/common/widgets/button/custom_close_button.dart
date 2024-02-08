import '../../../utils/constants/exports.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment: MainAxisAlignment.end,
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
    );
  }
}
