import '../../../../../utils/constants/exports.dart';

class CustomContainerAddress1 extends StatefulWidget {
   CustomContainerAddress1({Key? key, required this.isChecked,required this.onTap}) : super(key: key);
  bool isChecked = true;
   VoidCallback onTap ;

  @override
  State<CustomContainerAddress1> createState() => _CustomContainerAddress1State();
}

class _CustomContainerAddress1State extends State<CustomContainerAddress1> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:7,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 7,
                  blurRadius: 8,
                  // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                  width: 0.5.w,color: OColors.textInMyOrder1
              )
          ),
          child: Row(
            children: [
              Image.asset(OImages.location),
              SizedBox(width: 20.w,),
              Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("the address", style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OColors.blue,fontWeight: FontWeight.w600),),
                  SizedBox(height: 2.h),
                  Text("Home", style: Theme.of(context).textTheme.bodySmall),
                  SizedBox(height: 2.h),
                  Text("Next to the metro, Maadi 7 St", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.grey),),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Image.asset(OImages.edit),
                  SizedBox(width: OSizes.spaceBtwTexts2),
                  widget.isChecked ? Image.asset(OImages.delet) :const SizedBox(),],)
            ],
          ),
        ),
      ),
    );
  }

}
