// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/service/resume_service.dart' as _i3;
import 'domain/resume_use_case.dart' as _i4;
import 'presentation/bloc/bloc/home_bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.ResumeService>(() => _i3.ResumeServiceImpl());
  gh.factory<_i4.ResumeUseCase>(
      () => _i4.ResumeUseCaseImpl(get<_i3.ResumeService>()));
  gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc(get<_i4.ResumeUseCase>()));
  return get;
}
