import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../app/service_locator.dart';
import '../../../../core/utils/colors_manager.dart';
import '../../../../core/utils/strings_manager.dart';
import '../../../../core/widgets/default_button.dart';
import '../view_model/onboarding_states.dart';
import '../view_model/onboarding_view_model.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late OnBoardingViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = serviceLocator<OnBoardingViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _viewModel,
      child: BlocConsumer<OnBoardingViewModel, OnBoardingStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              fit: StackFit.expand,
              children: [
                PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: _viewModel.boardController,
                  onPageChanged: (index) {
                    if (index == _viewModel.boardingList.length - 1) {
                      _viewModel.changeIsLast(true);
                    } else {
                      _viewModel.changeIsLast(false);
                    }
                  },
                  itemCount: _viewModel.boardingList.length,
                  itemBuilder: (context, index) {
                    return _viewModel.boardingList[index];
                  },
                ),
                Positioned(
                  bottom: 20.h,
                  left: 20.w,
                  right: 20.w,
                  child: Row(
                    children: [
                      SmoothPageIndicator(
                        controller: _viewModel.boardController,
                        count: _viewModel.boardingList.length,
                        effect: ExpandingDotsEffect(
                          activeDotColor: ColorsManager.warmYellowColor,
                          dotColor: ColorsManager.lightPrimaryColor,
                          dotHeight: 20.h,
                          dotWidth: 20.h,
                          radius: 20.r,
                          spacing: 14.w,
                          expansionFactor: 1.01,
                        ),
                      ),
                      const Spacer(),
                      _viewModel.isLast
                          ? DefaultButton(
                              function: () {
                                _viewModel.skip();
                              },
                              text: AppStrings.start.tr(),
                              height: 45.h,
                              width: 80.w,
                              background: ColorsManager.warmYellowColor,
                            )
                          : FloatingActionButton(
                              backgroundColor: ColorsManager.warmYellowColor,
                              onPressed: () {
                                if (_viewModel.isLast) {
                                } else {
                                  _viewModel.boardController.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeIn,
                                  );
                                }
                              },
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                color: ColorsManager.whiteColor,
                              ),
                            ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
