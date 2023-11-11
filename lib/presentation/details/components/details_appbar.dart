import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task_ventio/constants/color/color_const.dart';
import 'package:task_ventio/constants/size/app_sizes.dart';
import 'package:task_ventio/domain/model/character/character_model.dart';

class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({super.key,required this.character});
final Character character;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: character.id.toString(),
      child: Container(
        height: AppSizes.getH(context, 0.4),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(character.image.toString()),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: AppSizes.getH(context, 0.01),
              left: AppSizes.getH(context, 0.01),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: AppSizes.getH(context, 0.045),
                  width: AppSizes.getH(context, 0.045),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ColorConstants.grey,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                   
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
