enum AppPage {
splash,
dashboard,
home,
}

extension AppPageExtension on AppPage {
  String get toPath {
    switch (this) {
      case AppPage.splash:
        return "/splash";
      case AppPage.dashboard:
        return "/dashboard";
      case AppPage.home:
        return "/home";
        default:
        return "/";
    }
  }

  String get toName {
    switch (this) {
      case AppPage.splash:
        return "SPLASH";
      case AppPage.dashboard:
        return "DASHBOARD";
      case AppPage.home:
        return "HOME";
      default:
        return "HOME";
    }
  }
}