import 'package:osta_app/utils/constants/exports.dart';

class AllDataLoginScreen extends StatefulWidget {
  const AllDataLoginScreen({super.key});

  @override
  State<AllDataLoginScreen> createState() => _AllDataLoginScreenState();
}

class _AllDataLoginScreenState extends State<AllDataLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const OAppBar(showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: OSizes.defaultSpace),
          child: const Column(
            children: [
              /// Logo, Title & Sub-Title
              OLoginHeader(),

              /// Form
              AllDataOLoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
