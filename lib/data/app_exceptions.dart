class AppException implements Exception {
  final message;
  final prefix;

  AppException({this.message, this.prefix});

  String toString() {
    // TODO: implement toString
    return '$prefix$message';
  }
}

class InternetException extends AppException {
  InternetException(String message) : super(message: '');
}

class RequestException extends AppException {
  RequestException(String message) : super(message: '');
}

class ServerException extends AppException {
  ServerException(String message) : super(message: '');
}
