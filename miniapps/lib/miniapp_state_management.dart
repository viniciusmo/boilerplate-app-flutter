abstract class ViewState {
  const ViewState();
}

class Idle extends ViewState {
  const Idle();
}

class Loading extends ViewState {
  const Loading();
}

class Success<T> extends ViewState {
  final T data;

  const Success(this.data);
}

class Error extends ViewState {
  final String message;

  const Error(this.message);
}
