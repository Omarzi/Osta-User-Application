import '../../../../../utils/constants/exports.dart';

class CustomAlertDialogInConfirmation extends StatelessWidget {
  CustomAlertDialogInConfirmation({Key? key,required this.text,required this.image,required this.dottedColor,required this.bgCircle,required this.title,required this.textButton,required this.haveTitle}) : super(key: key);
  String text,textButton,image,title;
  Color dottedColor;
  Color bgCircle;
  bool haveTitle = false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
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
                    child: Image.asset(image),
                  ),
                )
            ),
          ),
          SizedBox(height: haveTitle ?  OSizes.spaceBtwTexts2 : 0),
      Text(title,style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.primary))
        ],
      ),
      content:Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200.w,
                child: Text(text,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: OSizes.spaceBtwTexts2,),
          CustomButton2(text: textButton, onTap: (){},height: OSizes.imageSize * 1.2 ,width: 150.w,)
        ],
      ),

    );
  }
}
