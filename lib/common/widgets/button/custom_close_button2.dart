import '../../../utils/constants/exports.dart';

class CustomCloseButton2 extends StatelessWidget {
  const CustomCloseButton2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        GestureDetector(
          onTap: (){
            context.pop();
          },
          child: CircleAvatar(
            radius: 13.r,
            backgroundColor: OColors.textgrey,
            child: CircleAvatar(
              backgroundColor: OColors.white,
              radius: 11.r,
              child: Center(
                child: Icon(Icons.close,color: OColors.textgrey,size: 20.sp,),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
