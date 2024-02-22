import 'package:osta_app/features/more/presentation/add_new_adress_screen.dart';
import 'package:osta_app/features/more/presentation/be_a_partner_screen.dart';
import 'package:osta_app/features/more/presentation/help_center_screen.dart';
import 'package:osta_app/features/more/presentation/notifications_screen.dart';
import 'package:osta_app/features/more/presentation/share_the_app_screen.dart';
import 'package:osta_app/features/more/presentation/specific_help_center_screen.dart';
import 'package:osta_app/features/more/presentation/submit_proposals_screen.dart';
import 'package:osta_app/features/more/presentation/technical_support_screen.dart';
import 'package:osta_app/features/more/presentation/terms_of_use_screen.dart';

import '../features/market/presentation/search_bar_screen.dart';
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

      case ORoutesName.specificOfCategoryInRequestContactor:
        final list = settings.arguments as String;
        return PageTransition(
          child:  SpecificOfCategoryInRequestContactor(title: list),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.marketRoute:
        return PageTransition(
          child:  const MarketScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.searchBarRoute:
        return PageTransition(
          child:   const SearchBarScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.subCategoryInMarket:
        final list = settings.arguments as String;
        return PageTransition(
          child:   SubCategoryInMarket(title: list),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.detailsOfProductInMaket:
        return PageTransition(
          child: const DetailsOfProductInMaket(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.typeOfProductRoute:
        return PageTransition(
          child: const TypeOfProductScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.shoppingCartRoute:
        return PageTransition(
          child: const ShoppingCartScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.oderConfirmationRoute:
        return PageTransition(
          child: const OrderConfirmationScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.detailsOfMyOrderRoute:
        final Map<String, dynamic> map = settings.arguments as Map<String, dynamic>;
        return PageTransition(
        child:  DetailsOfMyOrderScreen(map: map),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.technicalSupportChatRout:
        return PageTransition(
          child:  const TechnicalSupportChatScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.modifyPasswordRoute:
        return PageTransition(
          child:  ModifyPasswordScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.walletRoute:
        return PageTransition(
          child: const WalletScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.addressRoute:
        return PageTransition(
          child: const AddressScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.chooseaAddressRoute:
        return PageTransition(
          child: const ChooseAdressScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.addNewAddressRoute:
        return PageTransition(
          child:  AddNewAddressScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.beAPartnerRoute:
        return PageTransition(
          child:   BeAPartnerScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.helpCenterRoute:
        return PageTransition(
          child: const HelpCenterScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.specificHelpCenterRoute:
        final list = settings.arguments as String;
        return PageTransition(
          child: SpecificHelpCenterScreen(title: list),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.technicalSupportRout:
        return PageTransition(
          child: const TechnicalSupportScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.termsOfUseRoute:
        return PageTransition(
          child: const TermsOfUseScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.submitProposalsRoute:
        return PageTransition(
          child: SubmitProposalsScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );

      case ORoutesName.shareTheAppRoute:
        return PageTransition(
          child: ShreTheAppScreen(),
          type: PageTransitionType.fade,
          settings: settings,
          reverseDuration: const Duration(milliseconds: 250),
        );
      case ORoutesName.notificationRoute:
        return PageTransition(
          child: NotificationScreen(),
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
