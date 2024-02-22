
import '../../../utils/constants/exports.dart';

class SpecificOfCategoryInRequestContactor extends StatefulWidget {
  SpecificOfCategoryInRequestContactor({Key? key,required this.title}) : super(key: key);
  String title;

  @override
  State<SpecificOfCategoryInRequestContactor> createState() => _SpecificOfCategoryInRequestContactorState();
}

class _SpecificOfCategoryInRequestContactorState extends State<SpecificOfCategoryInRequestContactor> {
  TextEditingController nameController = TextEditingController();

  TextEditingController totalAreaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(onPressed: (){context.pop();},icon: const Icon(Icons.arrow_back,color: OColors.white,),),
        title:Text(widget.title, style: Theme.of(context).textTheme.headlineSmall!.copyWith( color: OColors.white)),
        centerTitle: true,),

      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: OSizes.spaceBtwItems * 2,left: OSizes.padding,right: OSizes.padding),
          child: Column(
            children: [
              /// Name Text Field
              CustomTextFormFeild2(
                  labelText: "Name",
                  hintText: "Amira Adel",
                  controller: nameController,

              ),
              /// Phone Text Field
               CustomPhoneTextFormField(hintText: "01061489546"),
              /// Total area Text Field
              TextFormField(
                controller: totalAreaController,
                keyboardType: TextInputType.name,
                expands: false,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: "Total Area",
                  hintText: "150",
                  labelStyle: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: OColors.blue),
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: OColors.grey2),
                ),
                validator: (value) => OFormatter.formatUserName(value),
              ),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems,),
              const CustomDotsDivider(),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems,),
              /// Container Time and Date
              const CustomContainerForTimeAndDate(),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems,),
              const CustomDotsDivider(),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems,),
              CustomTextFormFieldWithCamer(hintText: "Type your project description here ", labelText: "Project Description"),
              SizedBox(height: OSizes.spaceBtwItems,),
              CustomButton2(text: "send now", onTap: (){},height: OSizes.imageSize * 1.2,)
            ],
          ),
        ),
      ),
    );
  }
}
