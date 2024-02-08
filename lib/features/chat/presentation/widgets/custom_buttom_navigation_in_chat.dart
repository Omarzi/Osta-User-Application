import '../../../../utils/constants/exports.dart';

class CustomButtomNavigationInChat extends StatelessWidget {
   CustomButtomNavigationInChat({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController controller=TextEditingController();

    return Container(
      padding: EdgeInsets.all(OSizes.spaceBetweenIcon),
      height: 60.h,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  fillColor: OColors.textForm,
                  filled: true,
                  label: Row(
                    children: [
                      Text("....write here",style:TextStyle(color: OColors.grey2),),
                      Spacer(),
                      Image.asset(OImages.happiness),
                      SizedBox(width: OSizes.spaceBtwTexts,),
                      Image.asset(OImages.camera),
                    ],
                  ),
                  hintStyle: TextStyle(color: OColors.grey2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                          color: OColors.textForm
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                          color: OColors.textForm
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                          color: OColors.textForm
                      )
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                          color: OColors.textForm
                      )
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: OColors.textForm
                    )
                  ),

                ),
              ),
            ),
          ),
          SizedBox(width: OSizes.spaceBtwTexts,),
          GestureDetector(
              onTap: (){
              },
              child: Container(
                height: 50.h,
               width: 50.w,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(50.r),
                 color: OColors.iconCall,
               ),
                child: Center(
                  child: Icon(controller.text.isNotEmpty? Icons.send:Icons.mic,color: OColors.white,size: 20.sp,),
                ),
              )
          ),
        ],

      ),
    );
  }

}
