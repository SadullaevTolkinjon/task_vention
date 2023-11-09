// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../data/api/api.dart' as _i3;
import '../data/api/auth_api.dart' as _i4;
import '../data/api/main_api.dart' as _i5;
import '../data/preferences/token_preferences.dart' as _i9;
import '../domain/repository/main_repository.dart' as _i6;
import '../domain/service/main_serivce.dart' as _i7;
import '../presentation/home/cubit/home_cubit.dart' as _i10;
import 'data_module.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    gh.factory<_i3.Api>(() => _i3.Api());
    gh.factory<_i4.AuthApi>(() => _i4.AuthApi(gh<_i3.Api>()));
    gh.factory<_i5.MainApi>(() => _i5.MainApi(gh<_i3.Api>()));
    gh.factory<_i6.MainRepository>(() => _i6.MainRepository(gh<_i5.MainApi>()));
    gh.factory<_i7.MainService>(() => _i7.MainService(gh<_i5.MainApi>()));
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => dataModule.prefs,
      preResolve: true,
    );
    gh.factory<_i9.TokenPreference>(
        () => _i9.TokenPreference(gh<_i8.SharedPreferences>()));
    gh.factory<_i10.HomeCubit>(() => _i10.HomeCubit(gh<_i6.MainRepository>()));
    return this;
  }
}

class _$DataModule extends _i11.DataModule {}
