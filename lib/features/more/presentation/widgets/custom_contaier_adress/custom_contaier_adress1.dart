import '../../../../../utils/constants/exports.dart';

class CustomContainerAdress1 extends StatefulWidget {
   CustomContainerAdress1({Key? key, required this.isChecked,required this.onTap}) : super(key: key);
  bool isChecked = true;
   VoidCallback onTap ;

  @override
  State<CustomContainerAdress1> createState() => _CustomContainerAdress1State();
}

class _CustomContainerAdress1State extends State<CustomContainerAdress1> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:7,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          decoration: BoxDecoration(
              boxShadow: [
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
              Spacer(),
              Row(
                children: [
                  Image.asset(OImages.edit),
                  SizedBox(width: OSizes.spaceBtwTexts2),
                  widget.isChecked ? Image.asset(OImages.delet) :SizedBox(),],)
            ],
          ),
        ),
      ),
    );
  }

}
