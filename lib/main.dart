import 'package:osta_app/utils/constants/exports.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ODeviceUtils.setStatusBarColor(OColors.transparent);
  ODeviceUtils.initCacheHelper();
  ODeviceUtils.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await OCacheHelper.init();
  runApp(const MyApp());
}