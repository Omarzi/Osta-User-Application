import '../../../utils/constants/exports.dart';

class CustomDotsDivider extends StatelessWidget {
  const CustomDotsDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          500 ~/ 10,
              (index) => Expanded(
            child: Container(
              color: index % 2 == 0 ? Colors.transparent : Colors.grey,
              height: 1,
            ),
          )),
    );
  }
}
