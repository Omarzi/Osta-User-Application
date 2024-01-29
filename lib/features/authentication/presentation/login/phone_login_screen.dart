import 'package:osta_app/features/authentication/presentation/login/widgets/phone_login_form.dart';
import 'package:osta_app/utils/constants/exports.dart';

class PhoneLoginScreen extends StatefulWidget {
  const PhoneLoginScreen({super.key});

  @override
  State<PhoneLoginScreen> createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends State<PhoneLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: OSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              const OLoginHeader(),

              /// Form
              const PhoneOLoginForm(),

              /// Divider
              // const OFormDivider(dividerText: '  or sign in with'),
              // SizedBox(height: OSizes.spaceBtwItems),

              /// Footer
              // const OSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
