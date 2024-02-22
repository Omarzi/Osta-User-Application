import '../../../../../utils/constants/exports.dart';

class CustomContainerForSupportScreen extends StatelessWidget {
   CustomContainerForSupportScreen({Key? key,required this.checked}) : super(key: key);
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Card(
      child: Container(
        height: height/5,
        width: width,
        padding: EdgeInsets.all(OSizes.spaceBtwTexts2),
        decoration: BoxDecoration(
          color: OColors.white,
          borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
          border: Border.all(
            width: 0.5.w,
            color: OColors.grey
          )
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Order number : 123456",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.blue)),
                SizedBox(width: OSizes.spaceBtwTexts),
               checked? Image.asset(OImages.three):const SizedBox(),
              ],
            ),
            SizedBox(height: OSizes.spaceBtwTexts2),
            Text("Lorem Ipsum is simply a formal text in the sense that the end is the form"
                 "It is not the content and is used in the printing and publishing industries",
                 style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
