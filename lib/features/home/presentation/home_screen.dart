import 'package:lottie/lottie.dart';
import 'package:osta_app/utils/constants/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    setState(() {
      _isScrolled =
          _scrollController.hasClients && _scrollController.offset > 0;
    });
  }

  double _buttonSize = 56.0;

  void _animateButton() {
    setState(() {
      _buttonSize = _buttonSize == 56.0 ? 100.0 : 56.0; // Change the size based on current size
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        leadingWidget: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()));
            },
            icon: Badge.count(
                count: 0,
                backgroundColor: const Color(0xffE5CC13),
                textColor: OColors.black,
                child: const Icon(Iconsax.notification)),
            color: OColors.white),
        title: SvgPicture.asset(OImages.appIcon, height: 26.h),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Iconsax.location, size: 23.sp),
              color: OColors.white,
              onPressed: () {
                context.pushNamed(ORoutesName.addressRoute);
              }),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            /// Slider
            const CustomSlider(),

            /// Two Categories (Market - Make Request A Contractor)
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      context.pushNamed(ORoutesName.homeOfRequestAContractor);
                    },
                    child: CustomContainerInCenter(
                        color1: const Color(0xFFF9B501),
                        color2: const Color(0xFFFBC62E),
                        title: "Make Request A Contractor",
                        image: OImages.makeRequestAContractor)),
                GestureDetector(
                    onTap: () {
                      context.pushNamed(ORoutesName.marketRoute);
                    },
                    child: CustomContainerInCenter(
                        color1: const Color(0xFF2ED3C1),
                        color2: const Color(0xFF33B4E5),
                        title: "Market",
                        image: OImages.market))
              ],
            ),

            /// All Another Categories
            GridView.builder(
              padding: EdgeInsets.only(
                left: OSizes.spaceBetweenIcon,
                right: OSizes.spaceBetweenIcon,
              ),
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h),
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (context, index) {
                return ProductComponent(
                  productName: OConstants.category[index],
                  color: OConstants.colors[index],
                  onTap: () {
                    Navigator.pushNamed(
                        context, ORoutesName.specificCategoryRoute,
                        arguments: OConstants.category[index]);
                  },
                );
              },
            ),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton.large(
        onPressed: () => context.pushNamed(ORoutesName.negotiationListRoute),
        backgroundColor: _isScrolled ? OColors.primary.withOpacity(0.5) : OColors.primary, // Change color based on scroll position
        child: Column(
          children: [
            Lottie.asset(OImages.driverLottie, width: 70.w),
             Text("Negotiation list",style: Theme.of(context).textTheme.titleSmall!.copyWith(color:_isScrolled ? OColors.black.withOpacity(0.5) : OColors.black, fontSize: 12.sp ))
          ],
        ),
      ),
    );
  }
}
