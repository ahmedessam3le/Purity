import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors_manager.dart';

class LargeFormField extends StatelessWidget {
  final BuildContext context;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? Function(String?) onValidate;
  final Function(String)? onSubmit;
  final Function()? onTap;
  final TextInputAction? textInputAction;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function()? suffixPressed;
  final bool isReadOnly;
  final bool? isSecure;

  const LargeFormField({
    Key? key,
    required this.context,
    required this.controller,
    required this.keyboardType,
    required this.onValidate,
    this.onSubmit,
    this.onTap,
    this.textInputAction,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixPressed,
    this.isReadOnly = false,
    this.isSecure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      readOnly: isReadOnly,
      obscureText: isSecure != null ? isSecure! : false,
      obscuringCharacter: isSecure != null ? '*' : '',
      maxLines: 5,
      style: Theme
          .of(context)
          .textTheme
          .bodyLarge!
          .copyWith(fontSize: 18.sp),
      textAlignVertical: TextAlignVertical.top,
      cursorColor: Theme
          .of(context)
          .primaryColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.w),
        hintText: hintText,
        hintStyle: Theme
            .of(context)
            .textTheme
            .bodyLarge,
        focusColor: Theme
            .of(context)
            .indicatorColor,
        prefixIcon: prefixIcon != null ? Icon(suffixIcon, color: Theme
            .of(context)
            .indicatorColor, size: 30.r) : null,
        suffixIcon: suffixIcon != null
            ? IconButton(
          onPressed: suffixPressed,
          icon: Icon(suffixIcon, color: Theme
              .of(context)
              .indicatorColor, size: 30.r),
        )
            : null,
        border: const OutlineInputBorder(),
        errorStyle: Theme
            .of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: ColorsManager.redColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.greyColor, width: 1.5.w),
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme
              .of(context)
              .primaryColor, width: 1.5.w),
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
    );
  }
}
