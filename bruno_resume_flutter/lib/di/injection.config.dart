// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bruno_resume_flutter/features/resume/data/data_source/resume_data_source.dart'
    as _i3;
import 'package:bruno_resume_flutter/features/resume/data/resume_repository.dart'
    as _i5;
import 'package:bruno_resume_flutter/features/resume/di/resume_module.dart'
    as _i8;
import 'package:bruno_resume_flutter/features/resume/domain/data/resume_repository.dart'
    as _i4;
import 'package:bruno_resume_flutter/features/resume/domain/resume_use_case.dart'
    as _i6;
import 'package:bruno_resume_flutter/features/resume/presentation/cubit/resume_cubit.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
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
    final resumeModule = _$ResumeModule();
    gh.factory<_i3.ResumeDataSource>(() => resumeModule.provideLocalDataSource);
    gh.factory<_i4.ResumeRepository>(
        () => _i5.ResumeRepositoryImpl(dataSource: gh<_i3.ResumeDataSource>()));
    gh.factory<_i6.ResumeUseCase>(() =>
        _i6.ResumeUseCaseImpl(resumeRepository: gh<_i4.ResumeRepository>()));
    gh.factory<_i7.ResumeCubit>(() => _i7.ResumeCubit(gh<_i6.ResumeUseCase>()));
    return this;
  }
}

class _$ResumeModule extends _i8.ResumeModule {}
