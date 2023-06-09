import 'package:intl/date_symbol_data_local.dart';

import 'export.dart';

import 'core/router/app_router.dart';
void main() {
  initializeDateFormatting('fr_FR', null).then((_) {
    // Initialize the desired locale
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: ScreenUtilInit(
        designSize: const Size(375.0, 812.0),
        builder: (BuildContext context, Widget? child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationProvider: AppRouter.router.routeInformationProvider,
            routeInformationParser: AppRouter.router.routeInformationParser,
            routerDelegate: AppRouter.router.routerDelegate,
            themeMode: ThemeMode.light,
          );
        },
      ),
    );
  }
}


