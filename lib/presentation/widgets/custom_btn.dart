import 'package:flutter/material.dart';
import 'package:task_ventio/constants/color/color_const.dart';
import 'package:task_ventio/constants/size/app_sizes.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.ontap,
    required this.height,
    required this.width,
    required this.color,
    required this.title,
   
    this.titleColor,
  });
  final Function ontap;
  final double height;
  final double width;
  final Color color;
  final String title;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child:  Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: AppSizes.getH(context, 0.018),
                color: titleColor ?? ColorConstants.white,
                fontWeight: FontWeight.w400,
              ),
            ),
      ),
    );
  }
}
