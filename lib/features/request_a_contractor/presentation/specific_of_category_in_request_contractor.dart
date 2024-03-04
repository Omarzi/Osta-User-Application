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
        leadingWidget: IconButton(onPressed: (){context.pop();},icon: const Icon(Icons.arrow_back,color: OColors.white)),
        title:Text(widget.title, style: Theme.of(context).textTheme.headlineSmall!.copyWith( color: OColors.white)),
        centerTitle: true,),

      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: OSizes.spaceBtwItems * 2,left: OSizes.padding,right: OSizes.padding),
          child: Column(
            children: [
              /// Name Text Field
              CustomTextFormField1(
                  hintText: "Amira Adel",
                  label: Text("Name",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue)),
                  controller: nameController),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems),
              /// Phone Text Field
               CustomPhoneTextFormField(hintText: "01061489546"),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems),
              /// Total area Text Field
              CustomTextFormField1(
                  hintText: "150",
                  label: Text("Total Area",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: OColors.blue)),
                  controller: totalAreaController),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems),
              const CustomDotsDivider(),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems),
              /// Container Time and Date
              const CustomContainerForTimeAndDate(),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems),
              const CustomDotsDivider(),
              /// Make Size
              SizedBox(height: OSizes.spaceBtwItems),
              CustomTextFormFieldWithCamer(hintText: "Type your project description here ", labelText: "Project Description"),
              SizedBox(height: OSizes.spaceBtwItems),
              CustomButton2(text: "send now", onTap: (){},height: OSizes.imageSize * 1.2)
            ],
          ),
        ),
      ),
    );
  }
}
