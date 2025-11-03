import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AlertDialogPop {
  String title;
  String message;
  String continueButtonLabel;
  String cancelButtonLabel;
  bool showCancelButton;
  bool showContinueButton;

  @required
  VoidCallback onContinuePressed;
  @required
  VoidCallback onCancelPressed;

  AlertDialogPop({
    required this.title,
    required this.message,
    required this.onContinuePressed,
    required this.onCancelPressed,
    required this.continueButtonLabel,
    required this.cancelButtonLabel,
    this.showCancelButton = true,
    this.showContinueButton = true,
  });

  Future<bool> showAlertDialog(BuildContext context) async {
    // set up the buttons
    Widget cancelButton = TextButton(
      //
      onPressed: onCancelPressed,
      //
      child: Text(cancelButtonLabel, style: Theme.of(context).textTheme.bodyMedium),
    );

    Widget continueButton = TextButton(
      onPressed: onContinuePressed,
      child: Text(continueButtonLabel, style: Theme.of(context).textTheme.bodyMedium),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      actionsPadding:  EdgeInsetsDirectional.only(end: 12.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
      content: Text(message, style: Theme.of(context).textTheme.bodyMedium),
      actions: [showCancelButton ? cancelButton : const SizedBox(), showContinueButton ? continueButton : const SizedBox()],
    );

    //set up CupertinoAlertDialog
    CupertinoAlertDialog iosAlert = CupertinoAlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [showCancelButton ? cancelButton : const SizedBox(), showContinueButton ? continueButton : const SizedBox()],
    );

    // show the dialog
    return Platform.isAndroid
        ? await showDialog(
            builder: (context) => WillPopScope(onWillPop: () async => false, child: alert),
            barrierDismissible: false,
            context: context,
          )
        : await showDialog(
            builder: (context) => WillPopScope(onWillPop: () async => false, child: iosAlert),
            barrierDismissible: false,
            context: context,
          );
  }
}
