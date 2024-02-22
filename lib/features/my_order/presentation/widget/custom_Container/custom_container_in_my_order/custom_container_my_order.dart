import 'package:osta_app/common/widgets/button/custom_reload_button.dart';

import '../../../../../../utils/constants/exports.dart';

class CustomContainerMyOrder extends StatefulWidget {
   CustomContainerMyOrder({Key? key,required this.title,this.widget,required this.image, required this.color,required this.textColor,required this.isChecked}) : super(key: key);
   String title;
   String image;
   Widget? widget;
   Color color;
   Color textColor;
   bool isChecked;
  @override
  State<CustomContainerMyOrder> createState() => _CustomContainerMyOrderState();
}
class _CustomContainerMyOrderState extends State<CustomContainerMyOrder> {
   _buildRatingStars(int rating){
     String stars ='';
     for(int i=0;i<rating ;i++){
       stars +='⭐ ';
     }
     stars.trim();
     return Text(stars);
   }
   @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: OColors.grey2,
              width: 0.3.w
          ),
        borderRadius: BorderRadius.circular(OSizes.borderRadiusLg),
        boxShadow: [
          BoxShadow(
          color: OColors.grey.withOpacity(0.12),
          blurRadius: 0.r,
          offset: const Offset(0, 3),
          spreadRadius: 1,
        ),],
      ),
      height: widget.isChecked? 320.h:300.h,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts2),
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(OSizes.borderRadiusLg), topLeft: Radius.circular(OSizes.borderRadiusLg)),
                ),
                child: Row(
                  children: [
                    Image.asset(widget.image,width: 20.w),
                    SizedBox(width: OSizes.spaceBetweenIcon,),
                    Text(widget.title, style: Theme.of(context).textTheme.bodyMedium!.copyWith(color:widget.textColor),),
                    Spacer(),
                    Text("23/05/2022",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: OColors.grey2),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.only(left: OSizes.padding * 1.5,right: OSizes.padding * 1.5),
              decoration: BoxDecoration(
                color: OColors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(OSizes.borderRadiusLg), bottomLeft: Radius.circular(OSizes.borderRadiusLg)),
              ),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: OSizes.space * 1.5 ,vertical: OSizes.spaceBtwItems,),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Amira Adel", style: Theme.of(context).textTheme.titleLarge,),
                              Row(
                                children: [
                                _buildRatingStars(1),
                                SizedBox(width: OSizes.spaceBtwTexts),
                                Text("4.5"),
                              ],),

                            ],
                          ),
                        ),
                        Spacer(),
                       SizedBox(child: widget.widget,)
                      ],
                    ),
                    Text("Order Number 584746 : ", style: Theme.of(context).textTheme.titleMedium,),
                    SizedBox(height: OSizes.spaceBtwTexts,),
                    Text("Description of the problem", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue),),
                    SizedBox(height: OSizes.spaceBtwTexts2,),
                    Text("Lorem Ipsum is a method of writing texts in Graphic design is commonly used", style: Theme.of(context).textTheme.titleSmall!.copyWith(color: OColors.grey2),),
                    SizedBox(height: OSizes.spaceBtwTexts2 ,),
                    CustomTextOfDetailsMoney2(type: "Total 225 EGB ", price: ""),
                    widget.isChecked?Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomReloadButton(onTap: (){})
                      ],
                    ):Container(),


                  ],
                ),
              )),
        ],
      ),
    );
  }
}
