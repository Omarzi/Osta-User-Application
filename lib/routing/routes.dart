import 'package:osta_app/features/authentication/presentation/login/all_data_login_screen.dart';
import 'package:osta_app/features/authentication/presentation/onboarding/onboarding.dart';
import 'package:osta_app/features/home/presentation/specific_category_screen.dart';
import 'package:osta_app/features/request_a_contractor/presentation/home_of_request_a_contractor.dart';
import 'package:osta_app/features/splash/splash_screen.dart';
import 'package:osta_app/navigation_menu.dart';
import '../utils/constants/exports.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      /// *************************************** Start No Connection *************************************** \\\
      case ORoutesName.noConnectionRoute:
        return PageTransition(
          child: const NoConnectionScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      /// *************************************** End No Connection *************************************** \\\

      /// *************************************** Start Authentication *************************************** \\\
      case ORoutesName.splashRoute:
        return PageTransition(
          child: const SplashScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
        case ORoutesName.onBoardingRoute:
        return PageTransition(
          child: const OnBoardingScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      case ORoutesName.phoneLoginRoute:
        return PageTransition(
          child: const PhoneLoginScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      case ORoutesName.allDataLoginRoute:
        return PageTransition(
          child: const AllDataLoginScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
    // case ORoutesName.signupRoute:
    //   return PageTransition(
    //     child: const SignupScreen(),
    //     type: PageTransitionType.fade,
    //     settings: settings,
    //     reverseDuration: const Duration(milliseconds: 250),
    //   );
    // case ORoutesName.forgetPasswordRoute:
    //   return PageTransition(
    //     child: const ForgetPassword(),
    //     type: PageTransitionType.fade,
    //     settings: settings,
    //     reverseDuration: const Duration(milliseconds: 250),
    //   );
    // case ORoutesName.verifyCodeRoute:
    //   return PageTransition(
    //     child: const SendOTPScreen(),
    //     type: PageTransitionType.fade,
    //     settings: settings,
    //     reverseDuration: const Duration(milliseconds: 250),
    //   );
    // case ORoutesName.resetPasswordRoute:
    //   return PageTransition(
    //     child: const ResetPasswordScreen(),
    //     type: PageTransitionType.fade,
    //     settings: settings,
    //     reverseDuration: const Duration(milliseconds: 250),
    //   );
        /// ************************************* Home *********************************************

      case ORoutesName.specificCategoryRoute:
        final list = settings.arguments as String;
        return PageTransition(
          child:  SpecificCategoryScreen(title: list),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.homeOfRequestAContractor:

        return PageTransition(
          child:  const HomeOfRequestAContractor(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      /// *************************************** End Authentication *************************************** \\\

      /// *************************************** Start Navigation Bar *************************************** \\\
      case ORoutesName.navigationMenuRoute:
        return PageTransition(
          child: const NavigationMenu(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      default:
        return unDefinedRoute();
    }
  }

  /// Un Defined Route
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(
            '',
          ),
        ),
        body: const Center(
          child: Text(
            '',
          ),
        ),
      ),
    );
  }
}
