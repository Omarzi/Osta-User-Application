import 'package:flutter/material.dart';
import 'package:osta_app/utils/constants/colors.dart';
import 'package:osta_app/utils/constants/exports.dart';
import 'package:pinput/pinput.dart';
class CustomPinPut extends StatefulWidget {
  const CustomPinPut({Key? key}) : super(key: key);

  @override
  State<CustomPinPut> createState() => _PinputExampleState();
}

class _PinputExampleState extends State<CustomPinPut> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = OColors.grey;
    const fillColor = OColors.grey;
    const borderColor = OColors.grey;

    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 56.h,
      textStyle:  TextStyle(
        fontSize: 22.sp,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.r),
        border: Border.all(color: borderColor),
      ),
    );

    /// Optionally you can use form to validate the Pinput
    return FractionallySizedBox(
      widthFactor: 1,
      child:Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Directionality(
              // Specify direction if desired
              textDirection: TextDirection.ltr,
              child: Pinput(
                controller: pinController,
                focusNode: focusNode,
                androidSmsAutofillMethod:
                AndroidSmsAutofillMethod.smsUserConsentApi,
                listenForMultipleSmsOnAndroid: true,
                defaultPinTheme: defaultPinTheme,
                separatorBuilder: (index) =>  SizedBox(width: 8.w),
                validator: (value) {
                  return value == '2222' ? null : 'Pin is incorrect';
                },
                // onClipboardFound: (value) {
                //   debugPrint('onClipboardFound: $value');
                //   pinController.setText(value);
                // },
                hapticFeedbackType: HapticFeedbackType.lightImpact,
                onCompleted: (pin) {
                  debugPrint('onCompleted: $pin');
                },
                onChanged: (value) {
                  debugPrint('onChanged: $value');
                },
                cursor: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin:  EdgeInsets.only(bottom: 9.h),
                      width: 22.w,
                      height: 1.h,
                      color: focusedBorderColor,
                    ),
                  ],
                ),
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: focusedBorderColor),
                  ),
                ),
                submittedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    color: fillColor,
                    borderRadius: BorderRadius.circular(19.r),
                    border: Border.all(color: focusedBorderColor),
                  ),
                ),
                errorPinTheme: defaultPinTheme.copyBorderWith(
                  border: Border.all(color: Colors.redAccent),
                ),
              ),
            ),
            SizedBox(height: OSizes.spaceBtwItems,),
            Text("00:45",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.grey),
            ),
            TextButton(
              onPressed: () {
                focusNode.unfocus();
                formKey.currentState!.validate();
              },
              child:  Text('Re-transmitter',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OColors.iconCall),
              ),
            ),
          ],
        ),
      )
    );

  }
}