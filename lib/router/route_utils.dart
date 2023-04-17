enum AppPage { splash, login, home, error, onboarding }

extension AppPageExtension on AppPage {
  String get toPath {
    switch (this) {
      case AppPage.home:
        return '/';
      case AppPage.login:
        return '/login';
      case AppPage.splash:
        return '/splash';
      case AppPage.error:
        return '/error';
      case AppPage.onboarding:
        return '/onboarding';
      default:
        return '/';
    }
  }

  String get toName {
    switch (this) {
      case AppPage.home:
        return 'HOME';
      case AppPage.login:
        return 'LOGIN';
      case AppPage.splash:
        return 'SPLASH';
      case AppPage.error:
        return 'ERROR';
      case AppPage.onboarding:
        return 'ONBOARDING';
      default:
        return 'HOME';
    }
  }

  String get toTitle {
        switch (this) {
      case AppPage.home:
        return 'Home Screen';
      case AppPage.login:
        return 'Login Screen';
      case AppPage.splash:
        return 'Splash Screen';
      case AppPage.error:
        return 'Error Screen';
      case AppPage.onboarding:
        return 'Onboarding Screen';
      default:
        return 'Home Screen';
    }
  }
}
