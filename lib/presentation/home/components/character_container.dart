import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task_ventio/constants/color/color_const.dart';
import 'package:task_ventio/constants/size/app_sizes.dart';
import 'package:task_ventio/domain/model/character/character_model.dart';
import 'package:task_ventio/presentation/widgets/my_padding.dart';

class CharacterContainer extends StatelessWidget {
  const CharacterContainer({
    super.key,
    required this.character,
    required this.onTap,
  });
  final Character character;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppSizes.getH(context, 0.014),
      ),
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Hero(
          tag: character.id.toString(),
          child: Container(
            height: AppSizes.getH(context, 0.3),
            width: double.infinity,
            padding: EdgeInsets.all(
              AppSizes.getH(context, 0.01),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  AppSizes.getH(context, 0.012),
                ),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: CachedNetworkImage(
                    imageUrl: character.image.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
                MyPadding(
                  height: AppSizes.getH(context, 0.01),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      CharacterStatusTxt(
                        title: "Name",
                        subtitle: character.name ?? "",
                      ),
                      const Spacer(),
                      CharacterStatusTxt(
                        title: "Status",
                        subtitle: character.status ?? "",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CharacterStatusTxt extends StatelessWidget {
  const CharacterStatusTxt({
    super.key,
    required this.subtitle,
    required this.title,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title: ",
          style: TextStyle(
            fontSize: AppSizes.getH(context, 0.018),
            fontWeight: FontWeight.w600,
            color: ColorConstants.kPrimiaryText,
          ),
        ),
        Expanded(
          child: Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: AppSizes.getH(context, 0.02),
              fontWeight: FontWeight.w600,
              color: ColorConstants.black,
            ),
          ),
        )
      ],
    );
  }
}
