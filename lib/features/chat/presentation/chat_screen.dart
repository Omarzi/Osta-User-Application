import '../../../utils/constants/exports.dart';

class ChatScreen extends StatefulWidget {
   const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: OAppBar(
        title: Text("Order Number:450450",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: OColors.white)),
        centerTitle: true,
        actions: [
               Padding(
                 padding:  EdgeInsets.symmetric(horizontal: OSizes.spaceBtwTexts),
                 child: Image.asset(OImages.iconChat,width: 40.w,),
               )
        ],
        leadingWidget: IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1),color: OColors.white),
      ),
      body:
         Stack(
           children: [
             SingleChildScrollView(
               child: Padding(
                 padding: EdgeInsets.only(top: height / 10,left: OSizes.spaceBetweenIcon,right: OSizes.spaceBetweenIcon,bottom:OSizes.spaceBtwItems),
                 child: Column(
                   children: [
                     /// Make Space
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send Message
                     const Row(
                       children: [
                         CustomContainerSendMessageDescriptionOfTheProblem(),
                       ],
                     ),
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send Message
                     const Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         CustomContainerDesOfTheMoney(),
                       ],
                     ),
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send Message
                     Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         CustomContainerConfirmation(isTrue: false,
                           textBt1: "Confirmation",
                           textBt2: "Cancelling order",
                           text1:"Hello,I'am Amira Adel\nI am happy to serve you today. Please confirm your order",),
                       ],
                     ),
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send Message
                     Row(mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         GestureDetector(
                             onTap: (){
                               showBottomSheet2();
                             },
                             child: CustomSendText(text: "Confirmation", time: "4:31PM")),
                       ],
                     ),
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send Message
                     Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         CustomContainerConfirmation2(text: "Amira is now crowned, following him on the map", textButton: "Track on map",
                           onTap: (){},
                         ),
                       ],
                     ),
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send Message
                     Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         CustomContainerConfirmation2(text: "Mustafa has arrived to you now, confirm arrival", textButton: "Have been reached",
                         onTap: (){},
                         ),
                       ],
                     ),
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send  Text Message
                     Row(mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         CustomSendText(text: "Have been reached", time: "4:31PM"),
                       ],
                     ),
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send Message
                     Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         CustomContainerConfirmation(isTrue: true,
                           text1: "The service provider wants to add an additional cost %20",
                           textBt1: "Confirm",
                           textBt2: "Reject",
                         ),
                       ],
                     ),
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send  Text Message
                     Row(mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         CustomSendText(text: "Reject", time: "4:31PM"),
                       ],
                     ),
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send Message
                     Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         CustomContainerConfirmation2(
                           text: "Please confirm when the service is finished",
                           textButton: "Service ended",
                           width: 250.w,
                           onTap: (){},
                         ),],),
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send  Text Message
                     Row(mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         CustomSendText(text: "The service has ended", time: "4:31PM"),
                       ],
                     ),
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send Message
                     Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         CustomContainerConfirmation2(
                           onTap: (){
                             showBottomSheet();
                           },
                           text: "Please confirm payment",
                           textButton: "Payment",
                           width: 200.w,
                         ),
                       ],
                     ),
                     SizedBox(height: OSizes.spaceBtwItems),
                     /// Container Send  Text Message
                     Align(
                       alignment: Alignment.bottomCenter,
                       child: Row(mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           CustomSendText(text: "The payment was made", time: "4:31PM"),
                         ],
                       ),
                     ),],),),),
             const CustomContainerDataOfUser(),
           ],
         ),
            bottomNavigationBar: SizedBox(
                height: height / 4.9,
                child:  Column(
                  children: [
                    const CustomContainerEnded(),
                    CustomButtomNavigationInChat(),
                  ],
                )),
    );
  }

  void showBottomSheet() {
     showModalBottomSheet(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
             topLeft: Radius.circular(OSizes.productImageRadius),
             topRight: Radius.circular(OSizes.productImageRadius))),
         showDragHandle: false,
         isScrollControlled: true,
         context: context,
         builder: (context) {
           return const CustomBottomSheetInChat();
         });
   }
  void showBottomSheet2() {
    showModalBottomSheet(
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
           topLeft: Radius.circular(OSizes.productImageRadius),
           topRight: Radius.circular(OSizes.productImageRadius))),
      isScrollControlled: true,
      backgroundColor: OColors.white,
        context: context,
        builder: (context) {
          return const CustomBottomSheetToShowDetailsOfThePrice();
        });
  }
}
