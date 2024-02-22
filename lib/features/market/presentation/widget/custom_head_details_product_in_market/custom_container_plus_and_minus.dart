import '../../../../../utils/constants/exports.dart';

class CustomContainerPlusAndMinus extends StatefulWidget {
   CustomContainerPlusAndMinus({Key? key}) : super(key: key);

  @override
  State<CustomContainerPlusAndMinus> createState() => _CustomContainerPlusAndMinusState();
}

class _CustomContainerPlusAndMinusState extends State<CustomContainerPlusAndMinus> {
 int count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
        color: OColors.bgContainerInMyOrder1,
      ),
      width: 120.w,
      height: 40.h,
      child: Row(
        children: [
          Expanded(
            flex: 2,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    count++ ;
                  });
                },
                child: Container(
                             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
                 color: OColors.textInMyOrder1
                             ),
                  child: GestureDetector(

                    child: Center(
                      child: SvgPicture.asset(OImages.plusIcon),
                    ),
                  ),
                          ),
              )),
          Expanded(
            flex: 2,
              child: Container(
                child: Center(child: Text("$count",style: Theme.of(context).textTheme.titleMedium,)),
          )),
          Expanded(
            flex: 2,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    count-- ;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
                      color: OColors.textInMyOrder1
                  ),
                  child: GestureDetector(

                    child: Center(
                      child: SvgPicture.asset(OImages.minusIcon),
                    ),
                  ),
                          ),
              )),
        ],
      ),
    );
  }
}
