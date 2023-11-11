import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task_ventio/constants/color/color_const.dart';
import 'package:task_ventio/domain/model/character/character_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.character});
  final Character character;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: character.id.toString(),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        CachedNetworkImageProvider(character.image.toString()),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 14,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ColorConstants.grey,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          child:  Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              weight: 10,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
