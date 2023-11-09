import 'package:flutter/material.dart';
import 'package:task_ventio/presentation/favorite/favorite_page.dart';
import 'package:task_ventio/presentation/home/home_view.dart';
import 'package:task_ventio/presentation/profile/profile_page.dart';

buildHomeUi(int index) {
  switch (index) {
    case 0:
      return const HomeView();
    case 1:
      return const FavoritePapge();
    case 2:
      return const ProfilePage();
    default:
      return const SizedBox();
  }
}
