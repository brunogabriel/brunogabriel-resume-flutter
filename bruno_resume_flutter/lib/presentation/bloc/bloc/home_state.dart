part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

@immutable
class HomeInitial extends HomeState {
  const HomeInitial() : super();
}

@immutable
class HomeLoading extends HomeState {
  const HomeLoading() : super();
}

@immutable
class HomeError extends HomeState {
  const HomeError() : super();
}

@immutable
class HomeResult extends HomeState {
  final Resume resume;

  const HomeResult(this.resume) : super();

  @override
  List<Object> get props => [resume];
}
