import 'package:flutter/material.dart';
import 'package:task_ventio/constants/color/color_const.dart';
import 'package:task_ventio/constants/size/app_sizes.dart';

customTextformfieldDecoration(BuildContext context, {String? hintText}) {
  return InputDecoration(
    filled: true,
    hoverColor: ColorConstants.blue,
    focusColor: ColorConstants.grey,
    fillColor: ColorConstants.grey,
    hintText: hintText,
    hintStyle: TextStyle(
        fontSize: AppSizes.getH(context, 0.017),
        fontWeight: FontWeight.w600,
        color: ColorConstants.black.withOpacity(0.2)),
    border: OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstants.grey),
        borderRadius: const BorderRadius.all(Radius.circular(10))),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstants.grey),
        borderRadius: const BorderRadius.all(Radius.circular(10))),
    disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstants.grey),
        borderRadius: const BorderRadius.all(Radius.circular(10))),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstants.grey),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );
}
