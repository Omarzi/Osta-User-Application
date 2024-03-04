import '../utils/constants/exports.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => LanguageCubit()..getSavedLanguage()),
            BlocProvider(create: (context) => OnBoardingCubit()),
            // BlocProvider(create: (context) => CheckConnectionCubit()),
            BlocProvider<NavigationMenuCubit>(create: (context) => NavigationMenuCubit()),
          ],
          child: BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, state) {
              if(state is ChangeLanguageState) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  locale: state.locale,
                  supportedLocales: const [
                    Locale('en', ''),
                    Locale('ar', ''),
                  ],
                  localizationsDelegates: [
                    OLanguageHelper.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  localeResolutionCallback: (currentLocal, supportedLocales) {
                    for (var locale in supportedLocales) {
                      if (currentLocal != null &&
                          currentLocal.languageCode == locale.languageCode) {
                        return currentLocal;
                      }
                    }
                    return supportedLocales.first;
                  },
                  themeMode: ThemeMode.system,
                  theme: DAppTheme.lightTheme(context),
                  darkTheme: DAppTheme.darkTheme(context),
                  navigatorKey: navigatorKey,
                  onGenerateRoute: RouteGenerator.getRoute,
                  // initialRoute: ORoutesName.loginRoute,
                  initialRoute: ORoutesName.splashRoute,
                  // initialRoute: ORoutesName.onBoardingRoute,
                );
              }
              return const SizedBox();
            },
          ),
        );
      },
    );
  }
}
