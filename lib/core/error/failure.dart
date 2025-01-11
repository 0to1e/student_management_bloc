class Failure {
  final String message;

  Failure({
    required this.message,
  });
}

class LocalDatabaseFailure extends Failure {
  LocalDatabaseFailure({required super.message});
}

class WebAPIFailure extends Failure {
  final int statusCode;
  WebAPIFailure({
    required super.message,
    required this.statusCode,
  });
}
