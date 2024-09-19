import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Theme & Constants/Colors.dart';
import '../Theme & Constants/constants.dart';

class CustomTextField extends StatelessWidget {
  Color? hintColor;
  String? hintText;
  String? labelText;
  EdgeInsets? contentPadding;
  IconData? icon;
  TextInputType? textInputType;
  double? fontSize;
  AutovalidateMode? autoValidateMode;
  TextEditingController? controller;
  String? Function(String?)? validator;
  IconData? icon2;
  Function()? secureText;
  bool onlyNumber;
  bool passwordBool;
  Function(String)? onChanged;
  Function(String)? onSubmit;
  Function()? onTap;
  bool enabled;
  bool expands;
  bool date;
  bool withValidationText;
  bool autoFucos;
  bool coloredDisabledText;
  bool autocorrect;
  bool showCursor;
  bool phone;
  bool numbersWithPoint;
  int? maxLength;
  TextInputAction action;
  TextAlign? textAlign;
  int? maxLines;
  int? minLines;
  Widget? suffixIcon;
  Widget? prefix;

  CustomTextField({
    this.action = TextInputAction.done,
    this.hintText,
    this.numbersWithPoint = false,
    this.phone = false,
    this.labelText,
    this.contentPadding,
    this.autocorrect = false,
    this.showCursor = false,
    this.textAlign,
    this.expands = false,
    this.date = false,
    this.coloredDisabledText = false,
    this.onChanged,
    this.prefix,
    this.autoValidateMode,
    this.autoFucos = false,
    this.suffixIcon,
    this.withValidationText = false,
    this.icon,
    this.textInputType,
    this.fontSize,
    this.controller,
    this.validator,
    this.icon2,
    this.secureText,
    this.passwordBool = false,
    this.onlyNumber = false,
    this.onSubmit,
    this.onTap,
    this.enabled = true,
    this.maxLength,
    this.maxLines,
    this.minLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      expands: expands,
      autofocus: autoFucos,
      maxLines: maxLines,
      enabled: enabled,
      onFieldSubmitted: onSubmit,
      onTap: onTap,
      onChanged: onChanged,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
          color: date || enabled || (!enabled && !coloredDisabledText)
              ? Colors.black87
              : ColorsManager.kPrimaryColor,
          // fontFamily: AppFont.kBukraNormalFont,
          fontSize: fontSize ?? 14),
      inputFormatters: onlyNumber
          ? <TextInputFormatter>[
              if (numbersWithPoint) ...[
                FilteringTextInputFormatter.allow(RegExp(r'^[\d.]*'))
              ],
              if (phone) ...[
                FilteringTextInputFormatter.allow(
                  RegExp(r'[0-9]'),
                ),
                FilteringTextInputFormatter.deny(
                  RegExp(r'^0+'), //users can't type 0 at 1st position
                ),
              ],
              if (!numbersWithPoint && !phone)
                FilteringTextInputFormatter.allow(RegExp(r'\d')),
              LengthLimitingTextInputFormatter(maxLength),
            ]
          : <TextInputFormatter>[
              LengthLimitingTextInputFormatter(maxLength),
            ],
      validator: validator,
      controller: controller,
      obscureText: passwordBool,
      keyboardType: textInputType,
      cursorColor: Colors.black38,
      autocorrect: autocorrect,
      autovalidateMode: autoValidateMode,
      showCursor: showCursor,
      decoration: InputDecoration(
        errorStyle: const TextStyle(
          color: Colors.transparent,
          fontSize: 0,
        ),
        prefixIcon: prefix,
        suffixIcon: suffixIcon,
        contentPadding: contentPadding ??
            const EdgeInsets.only(left: 15, bottom: 0, top: 0, right: 15),

        ///switched hint to label
        // hintText: hintText,
        labelText: hintText,
        labelStyle:
            Theme.of(context).textTheme.headline4!.copyWith(fontSize: 12),
        hintStyle: Theme.of(context).textTheme.headline4,
        filled: true,
        fillColor: ColorsManager.kBackgroundColor,
        enabledBorder: OutlineInputBorder(
            borderRadius: kRegularBorderRadius,
            borderSide: BorderSide(
              color: ColorsManager.kGreyColorLight.withOpacity(.5),
            )),
        disabledBorder: OutlineInputBorder(
            borderRadius: kRegularBorderRadius,
            borderSide: BorderSide(
              color: ColorsManager.kGreyColorLight.withOpacity(.5),
            )),
        enabled: enabled,
        focusedBorder: OutlineInputBorder(
            borderRadius: kRegularBorderRadius,
            borderSide: BorderSide(
              width: 2,
              color: ColorsManager.kPrimaryColor,
            )),
        border: const OutlineInputBorder(
            borderRadius: kRegularBorderRadius,
            borderSide: BorderSide(
              color: Colors.black,
            )),
      ),
      textInputAction: action,
    );
  }
}
