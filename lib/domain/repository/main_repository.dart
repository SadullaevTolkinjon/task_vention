import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:task_ventio/data/api/main_api.dart';
import 'package:task_ventio/domain/model/character/character_model.dart';
import 'package:url_launcher/url_launcher.dart';

@Injectable()
class MainRepository {
  final MainApi _mainApi;

  MainRepository(this._mainApi);

  fetchCharacters(int page, String query) async {
    final response = await _mainApi.fetchCharacters(page, query);
    var data = jsonDecode(response.body);
    return CharacterModel.fromJson(data);
  }

  shareLocation(String link) async {
    if (!await launchUrl(
      Uri.parse(link),
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $link');
    }
  }
}
