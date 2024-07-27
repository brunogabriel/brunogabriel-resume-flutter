import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/change_theme_use_case.dart';
import '../../domain/get_theme_use_case.dart';

@injectable
class ChangeThemeCubit extends Cubit<bool> {
  ChangeThemeCubit(this._changeThemeUseCase, this._getThemeUseCase)
      : super(false);

  final ChangeThemeUseCase _changeThemeUseCase;
  final GetThemeUseCase _getThemeUseCase;

  void changeTheme() async {
    final result = await _getThemeUseCase.execute().then(
      (value) {
        _changeThemeUseCase.execute(!value);
        return !value;
      },
    );

    emit(result);
  }

  void start() async {
    emit(await _getThemeUseCase.execute());
  }
}
