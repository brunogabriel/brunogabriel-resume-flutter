abstract class FutureUseCase<T, Params> {
  Future<T> execute(Params? params);
}

abstract class FutureBaseUseCase<T> {
  Future<T> execute();
}

abstract class UseCase<T, Params> {
  T execute(Params params);
}

abstract class BaseUseCase<T> {
  T execute();
}
