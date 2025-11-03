import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors_manager.dart';

class DefaultFormField extends StatelessWidget {
  final BuildContext context;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? Function(String?) onValidate;
  final Function(String)? onSubmit;
  final Function()? onTap;
  final TextInputAction? textInputAction;
  final String labelText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final Function()? suffixPressed;
  final bool isReadOnly;
  final bool? isSecure;

  const DefaultFormField({
    super.key,
    required this.context,
    required this.controller,
    required this.keyboardType,
    required this.onValidate,
    this.onSubmit,
    this.onTap,
    this.textInputAction,
    required this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
    this.suffixPressed,
    this.isReadOnly = false,
    this.isSecure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      readOnly: isReadOnly,
      obscureText: isSecure != null ? isSecure! : false,
      obscuringCharacter: isSecure != null ? '*' : '',
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14.sp),
      textAlignVertical: TextAlignVertical.center,
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(18.w),
        labelText: labelText,
        labelStyle: Theme.of(
          context,
        ).textTheme.headlineLarge!.copyWith(fontSize: 14.sp),
        focusColor: ColorsManager.warmYellowColor,
        prefixIcon: Icon(
          prefixIcon,
          size: 24.r,
          color: ColorsManager.darkPrimaryColor,
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffixIcon,
                  color: ColorsManager.warmYellowColor,
                  size: 24.r,
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.warmYellowColor,
            width: 1.5.w,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
        ),
        errorStyle: Theme.of(
          context,
        ).textTheme.bodyMedium!.copyWith(color: ColorsManager.redColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.primaryColor,
            width: 1.5.w,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.warmYellowColor,
            width: 1.5.w,
          ),
          borderRadius: BorderRadius.circular(16.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.redColor, width: 1.5.w),
          borderRadius: BorderRadius.circular(16.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.redColor, width: 1.5.w),
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      validator: onValidate,
      onFieldSubmitted: onSubmit,
      onTap: onTap,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
