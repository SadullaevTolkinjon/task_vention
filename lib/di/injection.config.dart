// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../data/api/api.dart' as _i3;
import '../data/api/main_api.dart' as _i4;
import '../domain/repository/main_repository.dart' as _i5;
import '../presentation/home/cubit/home_cubit.dart' as _i7;
import 'data_module.dart' as _i8;

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
    gh.factory<_i4.MainApi>(() => _i4.MainApi(gh<_i3.Api>()));
    gh.factory<_i5.MainRepository>(() => _i5.MainRepository(gh<_i4.MainApi>()));
    await gh.factoryAsync<_i6.SharedPreferences>(
      () => dataModule.prefs,
      preResolve: true,
    );
    gh.factory<_i7.HomeCubit>(() => _i7.HomeCubit(gh<_i5.MainRepository>()));
    return this;
  }
}

class _$DataModule extends _i8.DataModule {}
