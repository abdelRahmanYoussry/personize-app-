abstract class GenericState<T> {
  const GenericState();
}

class InitialState<T> extends GenericState<T> {
  const InitialState();
}

class LoadingState<T> extends GenericState<T> {
  const LoadingState();
}

class SuccessState<T> extends GenericState<T> {
  final T data;
  const SuccessState(this.data);
}

class FailureState<T> extends GenericState<T> {
  final String error;
  const FailureState(this.error);
}
