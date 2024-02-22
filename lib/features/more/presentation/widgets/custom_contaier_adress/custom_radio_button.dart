import '../../../../../utils/constants/exports.dart';

class CustomRadioButtonInAdress extends StatefulWidget {
   CustomRadioButtonInAdress({Key? key,required this.listTile}) : super(key: key);
  Widget listTile;

  @override
  State<CustomRadioButtonInAdress> createState() => _CustomRadioButtonInAdressState();
}

class _CustomRadioButtonInAdressState extends State<CustomRadioButtonInAdress> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:7,
      child: Container(
        height: MediaQuery.of(context).size.height/6.5,
        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 10.h),
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
                width: 0.5.w,color: OColors.grey
            )
        ),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Image.asset(OImages.location)),
              SizedBox(width: OSizes.spaceBtwTexts),
              Expanded(
                flex: 6,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: OSizes.spaceBtwTexts2),
                        Text("the address", style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: OColors.blue,fontWeight: FontWeight.w600),),
                        SizedBox(height: 2.h),
                        Text("Home", style: Theme.of(context).textTheme.bodySmall),
                        SizedBox(height: 2.h),
                        Text("Next to the metro,Maadi 7 St", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.grey)),
                      ],
                    ),
                    Spacer(),
                    SizedBox(width: OSizes.spaceBtwItems),
                    Expanded(child: widget.listTile),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Image.asset(OImages.edit),
                    SizedBox(width: OSizes.spaceBtwTexts2),
                    GestureDetector(
                        onTap: (){
                          showAlertDialogToDeletAdress();
                        },
                        child: Image.asset(OImages.delet))
                  ],),
              )
            ],
          ),
        ),
      ),
    );
  }
  void showAlertDialogToDeletAdress() {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return   CustomAlertDialogInConfirmation(
            haveTitle: false,
            textButton: "delete",
            title: "",
            text: "Are you sure to delete the address?",
            dottedColor: OColors.primary,
            bgCircle: OColors.warning3,
            image: OImages.correct,
          );
        }
    );
  }

}

