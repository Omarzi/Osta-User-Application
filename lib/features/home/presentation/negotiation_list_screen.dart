import 'package:osta_app/features/home/presentation/widgets/custom_component_negotiation_list/custom_component_negotiation_list.dart';

import '../../../utils/constants/exports.dart';

class NegotiationListScreen extends StatelessWidget {
  const NegotiationListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    return Scaffold(
      appBar: OAppBar(
        title: Text("Negotiation List",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white)),
        centerTitle: true,
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white),
      ),
      body: ListView.builder(
        itemCount: 4,
          itemBuilder:(context ,index){
            return CustomComponentNegotiationList();
          }
      ),

    );
  }
}
