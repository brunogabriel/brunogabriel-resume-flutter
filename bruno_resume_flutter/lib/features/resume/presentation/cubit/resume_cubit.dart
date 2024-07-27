import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/resume.dart';
import '../../domain/resume_use_case.dart';

part 'resume_state.dart';

@injectable
class ResumeCubit extends Cubit<ResumeState> {
  ResumeCubit(this._resumeUseCase) : super(ResumeLoadingState());

  final ResumeUseCase _resumeUseCase;

  void loadResume() async {
    emit(ResumeLoadingState());
    try {
      final result = await _resumeUseCase.execute();
      emit(ResumeResultState(result: result));
    } catch (_) {
      emit(ResumeErrorState());
    }
  }
}
