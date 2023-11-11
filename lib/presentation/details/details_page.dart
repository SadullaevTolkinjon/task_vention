import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
                child: CachedNetworkImage(
                  imageUrl: character.image.toString(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
