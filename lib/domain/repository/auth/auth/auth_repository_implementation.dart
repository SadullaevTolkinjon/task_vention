import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:task_ventio/data/api/auth_api.dart';
import 'package:task_ventio/data/preferences/token_preferences.dart';
import 'package:task_ventio/domain/model/auth/auth_response.dart';
import 'package:task_ventio/domain/repository/auth/auth/auth_repository.dart';
@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._api, this._token);
  final AuthApi _api;
  final TokenPreference _token;

  @override
  Future login(String email, String password) async {
    final response = await _api.login(email, password);
    final authResponse = AuthResponse.fromJson(jsonDecode(response.body));
    await _token.set(authResponse.token);
    throw UnimplementedError();
  }
}
