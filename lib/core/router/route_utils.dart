enum AppPage {
  splash,
  dashboard,
  home,
  favors,
  bracket,
  customize,
  packdetails,
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
      case AppPage.bracket:
        return "/bracket";
      case AppPage.customize:
        return "/customize";
      case AppPage.packdetails:
        return "/packdetails";
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
        case AppPage.bracket:
        return "BRACKET";
        case AppPage.customize:
        return "CUSTOMIZE";
      case AppPage.packdetails:
        return "PACKDETAILS";
      default:
        return "HOME";
    }
  }
}
