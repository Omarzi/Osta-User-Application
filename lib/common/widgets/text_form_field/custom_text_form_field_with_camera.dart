import '../../../utils/constants/exports.dart';

class CustomTextFormFieldWithCamer extends StatelessWidget {
   CustomTextFormFieldWithCamer({Key? key,required this.hintText,required this.labelText}) : super(key: key);
 String hintText,labelText;
  @override
  Widget build(BuildContext context) {
    return  Stack(
        children:[
          TextFormField(
            maxLines: 7,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
                labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),
                labelText: labelText,
                hintText: hintText,
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: OColors.labelColor),
                enabledBorder: OutlineInputBorder(
                  borderSide:  BorderSide(width: 0.9.w, color: OColors.grey),
                  borderRadius: BorderRadius.circular(10.r),
                )),
          ),
          Positioned(
              bottom: 15.h,
              right: 15.w,
              child: Image.asset(OImages.photoCamera)),
        ]
    );
  }
}
