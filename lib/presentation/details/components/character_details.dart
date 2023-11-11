import 'package:flutter/material.dart';
import 'package:task_ventio/constants/color/color_const.dart';
import 'package:task_ventio/constants/design/custom_shadow.dart';
import 'package:task_ventio/constants/size/app_sizes.dart';
import 'package:task_ventio/di/injection.dart';
import 'package:task_ventio/domain/model/character/character_model.dart';
import 'package:task_ventio/presentation/home/components/character_container.dart';
import 'package:task_ventio/presentation/widgets/custom_btn.dart';
import 'package:task_ventio/presentation/widgets/my_padding.dart';

import '../../../domain/repository/main_repository.dart';

class CharacterDetails extends StatelessWidget {
  final Character character;
  const CharacterDetails({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.getH(context, 0.014),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(
          AppSizes.getH(context, 0.01),
        ),
        decoration: customBoxShadow(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CharacterStatusTxt(
              title: "Name",
              subtitle: character.name??"",
            ),
            _buildPadding(
              AppSizes.getH(context, 0.008),
            ),
            CharacterStatusTxt(
              title: "Status",
              subtitle: character.status??"",
            ),
            _buildPadding(
              AppSizes.getH(context, 0.008),
            ),
            CharacterStatusTxt(
              title: "Species",
              subtitle:character.species??"",
            ),
            _buildPadding(
              AppSizes.getH(context, 0.008),
            ),
            CharacterStatusTxt(
              title: "Gender",
              subtitle:character.gender??"",
            ),
              _buildPadding(
              AppSizes.getH(context, 0.008),
            ),
            CharacterStatusTxt(
              title: "Location",
              subtitle: character.location!.name??"",
            ),
          
          ],
        ),
      ),
    );
  }

  _buildPadding(double size) {
    return MyPadding(
      height: size,
    );
  }
}
