import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:task_ventio/data/api/api.dart';

@Injectable()
class MainApi {
  final Api _api;
  MainApi(this._api);


  Future<Response> fetchCharacters(int page, String? search) async {
    final Map<String, Object> params = {'page': page};
    if (search != null) params['name'] = search;
    var data = await _api.get(path: 'character', params: params);
    return data;
  }
}
