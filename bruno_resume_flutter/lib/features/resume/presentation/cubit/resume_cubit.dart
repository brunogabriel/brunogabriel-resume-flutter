import 'package:bruno_resume_flutter/features/resume/domain/models/resume.dart';
import 'package:bruno_resume_flutter/features/resume/domain/resume_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'resume_state.dart';

@injectable
class ResumeCubit extends Cubit<ResumeState> {
  ResumeCubit(this.resumeUseCase) : super(ResumeLoadingState());

  final ResumeUseCase resumeUseCase;

  void loadResume() async {
    emit(ResumeLoadingState());
    try {
      final result = await resumeUseCase.execute();
      emit(ResumeResultState(result: result));
    } catch (_) {
      emit(ResumeErrorState());
    }
  }
}
