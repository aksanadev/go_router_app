import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String LOGIN_KEY = '123456';
String ONBOARD_KEY = '123123';

class AppService with ChangeNotifier {
  late final SharedPreferences sharedPreferences;
  bool _loginState = false;
  bool _initialized = false;
  bool _onboarding = false;

  AppService({required this.sharedPreferences});

  bool get loginState => _loginState;
  bool get initialized => _initialized;
  bool get onboarding => _onboarding;

  set loginState(bool state) {
    sharedPreferences.setBool(LOGIN_KEY, state);
    _loginState = state;
    notifyListeners();
  }

  set initialized(bool state) {
    _initialized = state;
    notifyListeners();
  }

  set onboarding(bool state) {
    sharedPreferences.setBool(ONBOARD_KEY, state);
    _onboarding = state;
    notifyListeners();
  }

  Future<void> onAppStart() async {
    _onboarding = sharedPreferences.getBool(ONBOARD_KEY) ?? false;
    _loginState = sharedPreferences.getBool(LOGIN_KEY) ?? false;

    await Future.delayed(const Duration(seconds: 2));
    log('App starting...');

    _initialized = true;
    notifyListeners();
  }
}
