enum AppPage {
splash,
  onBoarding,
  dashboard,
}

extension AppPageExtension on AppPage {
  String get toPath {
    switch (this) {
      case AppPage.splash:
        return "/splash";
      case AppPage.onBoarding:
        return "/onBoarding";
      case AppPage.dashboard:
        return "/dashboard";
        default:
        return "/";
    }
  }

  String get toName {
    switch (this) {
      case AppPage.splash:
        return "SPLASH";
      case AppPage.onBoarding:
        return "ONBOARDING";
      case AppPage.dashboard:
        return "DASHBOARD";
      default:
        return "HOME";
    }
  }
}