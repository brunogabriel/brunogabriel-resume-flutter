import 'package:bloc/bloc.dart';
import 'package:bruno_resume_flutter/domain/model/resume.dart';
import 'package:bruno_resume_flutter/domain/resume_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ResumeUseCase _useCase;

  HomeBloc(this._useCase) : super(const HomeInitial()) {
    on<HomeRequest>(_onRequest);
  }

  void _onRequest(event, emit) async {
    emit(const HomeLoading());
    try {
      emit(HomeResult(await _useCase.getResume()));
    } catch (_) {
      emit(const HomeError());
    }
  }
}
