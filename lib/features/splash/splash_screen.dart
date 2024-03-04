/// import 'package:osta_app/utils/constants/exports.dart';
///
/// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     navigationToHome();
//   }
//
//   @override
//   void dispose() => super.dispose();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFF29F19B), Color(0xFF0DB6E1)],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Padding(padding: EdgeInsets.symmetric(horizontal: 90.w), child: SvgPicture.asset(OImages.appIcon)),
//         )
//       ),
//     );
//   }
//
//   void navigationToHome() {
//     Future.delayed(
//       const Duration(seconds: 3),
//       () => context.pushReplacementNamed(ORoutesName.onBoardingRoute),
//     );
//   }
// }

import 'package:osta_app/utils/constants/exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  void initState() {
    super.initState();
    initSlidingAnimation();
    checkLocationPermission();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  /// Make Animation
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);

    animationController!.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /// Decoration
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF29F19B), Color(0xFF0DB6E1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 90.w),
            child: AnimatedBuilder(
              animation: fadingAnimation!,
              builder: (context, child) {
                return Opacity(
                  opacity: fadingAnimation!.value,
                  child: SvgPicture.asset(OImages.appIcon),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<void> checkLocationPermission() async {
    LocationPermission permission;

    /// Check if location services are enabled
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      /// Request to enable location services
      serviceEnabled = await Geolocator.openLocationSettings();
      if (!serviceEnabled) {
        /// Handle if user doesn't enable location services
        return;
      }
    }

    /// Check if location permission is granted
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      /// Request location permission
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        /// Handle if user doesn't grant location permission
        return;
      }
    }

    /// If location services and permissions are enabled, navigate to the home screen
    navigationToHome();
  }

  void navigationToHome() {
    Future.delayed(
      const Duration(seconds: 4),
      () => context.pushReplacementNamed(ORoutesName.onBoardingRoute),
    );
  }
}
