part of 'resume_cubit.dart';

@immutable
sealed class ResumeState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class ResumeInitialState extends ResumeState {}

final class ResumeLoadingState extends ResumeState {}

final class ResumeErrorState extends ResumeState {}

final class ResumeResultState extends ResumeState {
  ResumeResultState({required this.result});

  final Resume result;

  @override
  List<Object> get props => [];
}
