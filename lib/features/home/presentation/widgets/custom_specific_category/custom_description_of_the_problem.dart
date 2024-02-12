import '../../../../../utils/constants/exports.dart';

class CustomContainerDescriptionOfTheProblem extends StatelessWidget {
  const CustomContainerDescriptionOfTheProblem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: OSizes.defaultSpace),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 5.w,right: 5.w,bottom: 10.h),
            child: Text("Description of the problem",
            style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: OColors.blue),
            ),
          ),

          Stack(
            children:[
              TextFormField(
                maxLines: 7,
                decoration: InputDecoration(
                    hintText: "Write your problem here",
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: OColors.labelColor),
                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(width: 0.9.w, color: OColors.grey),
                      borderRadius: BorderRadius.circular(10.r),
                    )),
              ),
              Positioned(
                  bottom: 15.h,
                  right: 15.w,
                  child: Image.asset(OImages.photoCamera)),
            ]
          ),
        ],
      ),
    );
  }

}
