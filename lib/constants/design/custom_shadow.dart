import 'package:flutter/material.dart';
import 'package:task_ventio/constants/color/color_const.dart';
import 'package:task_ventio/constants/size/app_sizes.dart';

customBoxShadow(BuildContext context) {
  return BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: ColorConstants.grey100.withOpacity(0.5), // Shadow color
        spreadRadius: 2,
        blurRadius: 5,
        offset: const Offset(0, 3), // changes position of shadow
      ),
    ],
    color: ColorConstants.white,
    borderRadius: BorderRadius.all(
      Radius.circular(
        AppSizes.getH(context, 0.012),
      ),
    ),
  );
}
