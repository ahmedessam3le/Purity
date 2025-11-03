import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:purity/app/service_locator.dart';
import 'package:purity/config/log/logger.dart';
import 'package:purity/config/routes/app_navigator.dart';
import 'package:purity/core/caching/caching_client.dart';
import 'package:purity/core/enums/caching_keys.dart';
import 'package:purity/features/onboarding/presentation/view_model/onboarding_states.dart';
import 'package:purity/features/onboarding/presentation/widgets/first_step.dart';
import 'package:purity/features/onboarding/presentation/widgets/second_step.dart';
import 'package:purity/features/onboarding/presentation/widgets/third_step.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/view_models/app/app_view_model.dart';

class OnBoardingViewModel extends Cubit<OnBoardingStates> {
  OnBoardingViewModel() : super(OnBoardingInitialState());

  var boardController = PageController();

  bool isLast = false;

  void changeIsLast(bool value) {
    isLast = value;
    emit(OnBoardingChangeLastItemState());
  }

  List<Widget> boardingList = [
    const FirstStep(),
    const SecondStep(),
    const ThirdStep(),
  ];

  void changeTheme(BuildContext context, bool isDark) {
    BlocProvider.of<AppViewModel>(
      context,
    ).changeAppThemeMode(fromShared: isDark);
    emit(OnBoardingChangeThemeState());
  }

  Future<void> skip() async {
    serviceLocator<CachingClient>()
        .set(key: CachingKeys.isFirstLaunch.value, value: false)
        .then((value) async {
          Logger.print(title: 'On Boarding Write', message: value.toString());
          AppNavigator.navigateTo(isReplace: true, route: Routes.loginRoute);
        });
  }
}
