import 'package:osta_app/utils/constants/exports.dart';

class AllDataOLoginForm extends StatefulWidget {
  const AllDataOLoginForm({super.key});

  @override
  State<AllDataOLoginForm> createState() => _AllDataOLoginFormState();
}

class _AllDataOLoginFormState extends State<AllDataOLoginForm> {
  String currentLocation = "Loading...";
  bool isMale = true;
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> allDataLoginFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  /// Get Current Location
  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      List<Placemark> placeMarks = await placemarkFromCoordinates(position.latitude, position.longitude);

      String country = placeMarks.first.country ?? "Unknown";
      setState(() => currentLocation = country);
    } catch (e) {print("Error getting location: $e");}
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: allDataLoginFormKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: OSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Username
            TextFormField(
              controller: userNameController,
              keyboardType: TextInputType.name,
              expands: false,
              decoration: InputDecoration(
                labelText: "userName".tr(context),
                prefixIcon: const Icon(Iconsax.user_edit),
              ),
              validator: (value) => OFormatter.formatUserName(value),
            ),

            /// Make Some Space
            SizedBox(height: OSizes.spaceBtwInputFields),

            /// Email
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              expands: false,
              decoration: InputDecoration(
                labelText: "email".tr(context),
                prefixIcon: const Icon(Iconsax.direct),
              ),
              validator: (value) => OFormatter.formatEmail(value),
            ),

            /// Make Some Space
            SizedBox(height: OSizes.spaceBtwInputFields),

            /// Location (Country)
            TextFormField(
              expands: false,
              readOnly: true,
              decoration: InputDecoration(
                // labelText: currentLocation,
                hintText: currentLocation,
                prefixIcon: const Icon(Iconsax.location),
              ),
              validator: (value) => OFormatter.formatLocation(currentLocation),
            ),

            /// Make Some Space
            SizedBox(height: OSizes.spaceBtwInputFields),

            /// Checkbox (Male - Female)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Custom CheckBox
                CustomCheckBox(
                  onPressed: () => setState(() => isMale = true),
                  borderColor: isMale ? OColors.primary : Colors.grey,
                  checkIconWidget: isMale ? Icon(Icons.check, size: 18.sp, color: OColors.primary) : Container(),
                  textForCheckBox: Text('Male', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: isMale ? OColors.primary : OColors.black, fontWeight: isMale ? FontWeight.w600 : FontWeight.w600)),
                ),
                SizedBox(width: 26.w),
                CustomCheckBox(
                  onPressed: () => setState(() => isMale = false),
                  borderColor: isMale ? Colors.grey : OColors.primary,
                  checkIconWidget: isMale ? Container() : Icon(Icons.check, size: 18.sp, color: OColors.primary),
                  textForCheckBox: Text('Female', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: isMale ? OColors.black : OColors.primary, fontWeight: isMale ? FontWeight.w500 : FontWeight.w600)),
                ),
              ],
            ),

            /// Make Some Space
            SizedBox(height: OSizes.spaceBtwInputFields),

            /// Sign In Button
            CustomButton(
              buttonText: "singIn".tr(context),
              onPressed: () {
                allDataLoginFormKey.currentState!.validate();
                if(allDataLoginFormKey.currentState!.validate()) {
                  print(isMale ? 'Male' : 'Female');
                  context.pushNamed(ORoutesName.navigationMenuRoute);
                }
              },
              // onPressed: () =>
              //     context.pushNamed(ORoutesName.navigationMenuRoute)
            ),

            SizedBox(height: OSizes.spaceBtwSections),

            /// Terms&Conditions Checkbox
            const OTermsAndConditionCheckbox(),
          ],
        ),
      ),
    );
  }
}