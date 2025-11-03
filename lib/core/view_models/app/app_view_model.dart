import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'app_view_model_states.dart';

class AppViewModel extends Cubit<AppStates> {
  AppViewModel() : super(AppInitialState());

  init() async {
    // AppConstants.appBox = await Hive.openBox(AppConstants.appBoxName);
  }

  bool isDark = false;

  void changeAppThemeMode({required bool fromShared}) {
    isDark = fromShared;
    // AppConstants.appBox!.put(AppConstants.appTheme, isDark).then((value) {
    //   emit(ChangeAppThemeState(isDark));
    // });
  }

  void getSavedTheme() {
    try {
      var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
      bool isSystemDarkMode = brightness == Brightness.dark;
      // isDark = AppConstants.appBox!.get(AppConstants.appTheme) ?? isSystemDarkMode;
      emit(ChangeAppThemeState(isDark));
    } catch (error) {
      debugPrint('-------- getSavedTheme ERROR : -----------\n${error.toString()}');
    }
  }
}
