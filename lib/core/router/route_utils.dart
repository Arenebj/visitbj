enum AppPage {
  splash,
  dashboard,
  home,
  favors,
  search,
  account,
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
      case AppPage.favors:
        return "/favors";
      case AppPage.search:
        return "/search";
      case AppPage.account:
        return "/account";
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
        case AppPage.favors:
        return "FAVORS";
        case AppPage.search:
        return "SEARCH";
        case AppPage.account:
        return "ACCOUNT";
      default:
        return "HOME";
    }
  }
}
