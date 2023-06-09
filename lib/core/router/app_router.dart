import 'package:visitbj/export.dart';
class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  /// The route configuration.
  static final GoRouter _goRouter = GoRouter(
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: AppPage.home.toPath,
      errorBuilder: (context, state) {
        return const Scaffold(
          body: Center(
            child: Text(
              " Oups route error :)",
              style: TextStyle(color: Colors.black),
            ),
          ),
        );
      },
      routes: [
        GoRoute(
          path: AppPage.splash.toPath,
          name: AppPage.splash.toName,
          builder: (context, state) {
            return const SplashScreen();
          },
        ),
        GoRoute(
          path: AppPage.home.toPath,
          name: AppPage.home.toName,
          builder: (context, state) {
            return const HomeScreen();
          },
        ),

      ]

  );

  static GoRouter get router => _goRouter;
}
