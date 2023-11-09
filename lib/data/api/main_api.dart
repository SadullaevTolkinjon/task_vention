import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:task_ventio/data/api/api.dart';

@Injectable()
class MainApi {
  final Api _api;
  MainApi(this._api);
  Future<Response> getCategory() async {
    var data = await _api.get(path: 'category/top');
    return data;
  }

  Future<Response> fetchCharacters(int page) async {
    final Map<String, Object> params = {'page': page};
    var data = await _api.get(
      path: 'character',
      params: params,
    );
    return data;
  }
}
