// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bruno_resume_flutter/features/change_theme/data/change_theme_repository.dart'
    as _i10;
import 'package:bruno_resume_flutter/features/change_theme/data/data_source/change_theme_data_source.dart'
    as _i8;
import 'package:bruno_resume_flutter/features/change_theme/domain/change_theme_use_case.dart'
    as _i11;
import 'package:bruno_resume_flutter/features/change_theme/domain/get_theme_use_case.dart'
    as _i12;
import 'package:bruno_resume_flutter/features/change_theme/domain/repository/change_theme_repository.dart'
    as _i9;
import 'package:bruno_resume_flutter/features/change_theme/presentation/cubit/change_theme_cubit.dart'
    as _i14;
import 'package:bruno_resume_flutter/features/resume/data/data_source/resume_data_source.dart'
    as _i3;
import 'package:bruno_resume_flutter/features/resume/data/resume_repository.dart'
    as _i5;
import 'package:bruno_resume_flutter/features/resume/di/resume_module.dart'
    as _i15;
import 'package:bruno_resume_flutter/features/resume/domain/data/resume_repository.dart'
    as _i4;
import 'package:bruno_resume_flutter/features/resume/domain/resume_use_case.dart'
    as _i6;
import 'package:bruno_resume_flutter/features/resume/presentation/cubit/resume_cubit.dart'
    as _i13;
import 'package:bruno_resume_flutter/shared/preferences/di/shared_preferences_module.dart'
    as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

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
    final resumeModule = _$ResumeModule();
    final sharedPreferencesModule = _$SharedPreferencesModule();
    gh.factory<_i3.ResumeDataSource>(() => resumeModule.provideLocalDataSource);
    gh.factory<_i4.ResumeRepository>(
        () => _i5.ResumeRepositoryImpl(dataSource: gh<_i3.ResumeDataSource>()));
    gh.factory<_i6.ResumeUseCase>(() =>
        _i6.ResumeUseCaseImpl(resumeRepository: gh<_i4.ResumeRepository>()));
    await gh.singletonAsync<_i7.SharedPreferences>(
      () => sharedPreferencesModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i8.ChangeThemeDataSource>(() => _i8.LocalChangeThemeDataSource(
        sharedPreferences: gh<_i7.SharedPreferences>()));
    gh.factory<_i9.ChangeThemeRepository>(() => _i10.ChangeThemeRepositoryImpl(
        changeThemeDataSource: gh<_i8.ChangeThemeDataSource>()));
    gh.factory<_i11.ChangeThemeUseCase>(() => _i11.ChangeThemeUseCaseImpl(
        repository: gh<_i9.ChangeThemeRepository>()));
    gh.factory<_i12.GetThemeUseCase>(() =>
        _i12.GetThemeUseCaseImpl(repository: gh<_i9.ChangeThemeRepository>()));
    gh.factory<_i13.ResumeCubit>(
        () => _i13.ResumeCubit(gh<_i6.ResumeUseCase>()));
    gh.factory<_i14.ChangeThemeCubit>(() => _i14.ChangeThemeCubit(
          gh<_i11.ChangeThemeUseCase>(),
          gh<_i12.GetThemeUseCase>(),
        ));
    return this;
  }
}

class _$ResumeModule extends _i15.ResumeModule {}

class _$SharedPreferencesModule extends _i16.SharedPreferencesModule {}
