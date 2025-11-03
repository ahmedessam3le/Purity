import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../utils/colors_manager.dart';

class AppDialogs {
  static void showErrorDialog({
    required BuildContext context,
    required String title,
    required String message,
    required String confirmButtonLabel,
    required void Function() onConfirmButtonPressed,
  }) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.error,
      title: title,
      text: message,
      barrierDismissible: false,
      borderRadius: 24.r,
      width: 100.w,
      confirmBtnText: confirmButtonLabel,
      onConfirmBtnTap: onConfirmButtonPressed,
      confirmBtnColor: Theme.of(context).primaryColorDark,
      confirmBtnTextStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
        overflow: TextOverflow.ellipsis,
        color: ColorsManager.whiteColor,
      ),
      titleColor: ColorsManager.redColor,
    );
  }

  static void showWarningDialog({
    required BuildContext context,
    required String title,
    required String message,
    required String confirmButtonLabel,
    required void Function() onConfirmButtonPressed,
  }) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.warning,
      title: title,
      text: message,
      barrierDismissible: false,
      borderRadius: 24.r,
      width: 120.w,
      cancelBtnTextStyle: Theme.of(
        context,
      ).textTheme.bodyMedium!.copyWith(color: ColorsManager.whiteColor),
      confirmBtnText: confirmButtonLabel,
      onConfirmBtnTap: onConfirmButtonPressed,
      confirmBtnColor: Theme.of(context).primaryColorDark,
      confirmBtnTextStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
        overflow: TextOverflow.ellipsis,
        color: ColorsManager.whiteColor,
      ),
    );
  }

  static void showInfoDialog({
    required BuildContext context,
    required String title,
    required String message,
    required String confirmButtonLabel,
    required void Function() onConfirmButtonPressed,
  }) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.info,
      title: title,
      text: message,
      barrierDismissible: false,
      borderRadius: 24.r,
      width: 100.w,
      confirmBtnText: confirmButtonLabel,
      onConfirmBtnTap: onConfirmButtonPressed,
      confirmBtnColor: Theme.of(context).primaryColorDark,
      confirmBtnTextStyle: Theme.of(
        context,
      ).textTheme.bodyMedium!.copyWith(overflow: TextOverflow.ellipsis),
    );
  }

  static void showFoundBarcodeDialog({
    required BuildContext context,
    required String title,
    required String message,
    required String confirmButtonLabel,
    required void Function() onConfirmButtonPressed,
  }) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      title: title,
      text: message,
      barrierDismissible: false,
      borderRadius: 24.r,
      width: 100.w,
      confirmBtnText: confirmButtonLabel,
      onConfirmBtnTap: onConfirmButtonPressed,
      confirmBtnColor: Theme.of(context).primaryColorDark,
      confirmBtnTextStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
        overflow: TextOverflow.ellipsis,
        color: ColorsManager.offWhiteColor,
      ),
    );
  }

  static bool showConfirmDialog({
    required BuildContext context,
    required String title,
    required String message,
    required String confirmButtonLabel,
    required Color confirmButtonColor,
    Color? titleColor,
    ui.TextAlign? textAlignment,
    required void Function() onConfirmButtonPressed,
    required String cancelButtonLabel,
    required void Function() onCancelButtonPressed,
  }) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.confirm,
      title: title,
      text: message,
      textAlignment: textAlignment,
      barrierDismissible: false,
      borderRadius: 24.r,
      width: 100.w,
      confirmBtnText: confirmButtonLabel,
      onConfirmBtnTap: onConfirmButtonPressed,
      confirmBtnColor: confirmButtonColor,
      confirmBtnTextStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
        overflow: TextOverflow.ellipsis,
        color: ColorsManager.whiteColor,
      ),
      cancelBtnText: cancelButtonLabel,
      onCancelBtnTap: onCancelButtonPressed,
      cancelBtnTextStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
        overflow: TextOverflow.ellipsis,
        color: ColorsManager.scaffoldBackgroundColor,
      ),
      titleColor: titleColor ?? ColorsManager.scaffoldBackgroundColor,
      showCancelBtn: true,
    );
    return true;
  }

  static void showLoadingDialog({
    required BuildContext context,
    required String message,
    Duration? autoCloseDuration,
    bool? isNotDismissible,
  }) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.loading,
      text: message,
      barrierDismissible: false,
      borderRadius: 24.r,
      width: 100.r,
      autoCloseDuration: autoCloseDuration,
      disableBackBtn: isNotDismissible ?? false,
    );
  }

  static showPopUpDialog({
    required BuildContext context,
    required String title,
    required String message,
    required List<Widget> actions,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).unselectedWidgetColor,
              ),
            ),
            content: Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 17.sp,
                color: Theme.of(context).unselectedWidgetColor,
              ),
            ),
            actions: actions,
            backgroundColor: Theme.of(context).indicatorColor,
          ),
        );
      },
    );
  }
}
