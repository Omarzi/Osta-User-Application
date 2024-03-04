import '../../../../../utils/constants/exports.dart';

class CustomHeadInMarketRequest extends StatefulWidget {
  const CustomHeadInMarketRequest({Key? key}) : super(key: key);

  @override
  State<CustomHeadInMarketRequest> createState() => _CustomHeadInMarketRequestState();
}

class _CustomHeadInMarketRequestState extends State<CustomHeadInMarketRequest> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: GestureDetector(
                    onTap: (){
                     setState(() {
                       isPressed = !isPressed ;
                     });
                    },
                    child: Text("current",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: isPressed ? OColors.textInMyOrder1 : OColors.black))),
              ),
            ),
            Container(height: 40.h,width: 1.w,color: OColors.grey2,),
            Expanded(
              flex: 2,
              child: Center(
                child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isPressed = !isPressed ;
                      });
                    },
                    child:  Text("The ending",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: isPressed ? OColors.black :OColors.textInMyOrder1 ))),
              ),
            ),
          ],
        ),
        const Divider(thickness: 1,)
      ],
    );
  }
}
