import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/core/styles/app_theme.dart';
import 'package:foodly/screens/on_boarding/splash_screen_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await GetStorage.init();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('uz', 'UZ'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        title: LocaleKeys.appName.tr(),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: const HomePage(),

        theme: getApplicationTheme(),
      ),
    );
  }
}
