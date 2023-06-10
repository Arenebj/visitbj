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
                  builder: (context, state) => const ScaffoldCustom(),
                  routes: [
                    GoRoute(
                      path: "home",
                      pageBuilder: (context, state) =>
                          const NoTransitionPage(child: HomeScreen()),
                      routes: [
                        GoRoute(
                            path: "packdetails",
                            name: "/packdetails",
                            pageBuilder: (context, state) =>
                            const NoTransitionPage(child: PackDescription()),
                            routes: [

                            ]),

                      ]
                    ),
                    GoRoute(
                      path: "favors",
                      pageBuilder: (context, state) =>
                          const NoTransitionPage(child: FavorsScreen()),
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
      ]);

  static GoRouter get router => _goRouter;
}
