import 'package:visitbj/export.dart';
import 'package:visitbj/ui/pages/bottomNavigator/bottomNavigator.dart';
import 'package:visitbj/ui/pages/homeScreen/homeScreen.dart';
class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  /// The route configuration.
  static final GoRouter _goRouter = GoRouter(
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: AppPage.splash.toPath,
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
        ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) {
              return child;
            },
            routes: [
              GoRoute(
                  path: AppPage.dashboard.toPath,
                  name: AppPage.dashboard.toName,
                  builder: (context, state) => const BottomNavigatorScreen(),
                  routes: [
                    GoRoute(
                      path: "home",
                      pageBuilder: (context, state) => NoTransitionPage(child: HomeScreen()),
                    
                    ),
                  ]),
            ]),

       GoRoute(
          path: AppPage.splash.toPath,
          name: AppPage.splash.toName,
          builder: (context, state) {
            return const SplashScreen();
          },
        ),

      ]

  );

  static GoRouter get router => _goRouter;
}
