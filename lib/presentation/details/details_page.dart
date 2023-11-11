import 'package:flutter/material.dart';
import 'package:task_ventio/constants/color/color_const.dart';
import 'package:task_ventio/constants/size/app_sizes.dart';
import 'package:task_ventio/di/injection.dart';
import 'package:task_ventio/domain/model/character/character_model.dart';
import 'package:task_ventio/domain/repository/main_repository.dart';
import 'package:task_ventio/presentation/details/components/character_details.dart';
import 'package:task_ventio/presentation/details/components/details_appbar.dart';
import 'package:task_ventio/presentation/widgets/custom_btn.dart';
import 'package:task_ventio/presentation/widgets/my_padding.dart';

class DetailsPage extends StatelessWidget {
  final Character character;
  const DetailsPage({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppbar(character),
            _buildPadding(AppSizes.getH(context, 0.014)),
            CharacterDetails(
              character: character,
            ),
            const Spacer(),
            _buildFloatingBtn(context)
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

  _buildFloatingBtn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.getH(context, 0.014),
      ),
      child: CustomBtn(
        height: AppSizes.getH(context, 0.05),
        width: double.infinity,
        color: ColorConstants.grey,
        titleColor: ColorConstants.black,
        ontap: () {
          locator<MainRepository>().shareLocation(character.location!.url!);
        },
        title: "Go to location",
      ),
    );
  }

  _buildAppbar(Character character) {
    return DetailsAppbar(
      character: character,
    );
  }
}
