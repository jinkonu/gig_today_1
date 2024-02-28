// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:gig_today_1/data/repository/gig_repository.dart' as _i4;
import 'package:gig_today_1/data/repository/gig_repository.default.dart' as _i5;
import 'package:gig_today_1/data/states/gig/gig_bloc.dart' as _i7;
import 'package:gig_today_1/data/states/settings/settings_bloc.dart' as _i6;
import 'package:gig_today_1/di.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.Dio>(registerModule.dio);
    gh.singleton<_i4.GigRepository>(_i5.DefaultGigRepository());
    gh.singleton<_i6.SettingsBloc>(_i6.SettingsBloc());
    gh.singleton<_i7.GigBloc>(
        _i7.GigBloc(gigRepository: gh<_i4.GigRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {}
