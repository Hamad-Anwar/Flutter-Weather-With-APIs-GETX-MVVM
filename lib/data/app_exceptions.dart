class AppExceptions implements Exception{
  String? _prefix;
  String? _message;
  AppExceptions([this._prefix,this._message]);
}

class InternetException extends AppExceptions{
  InternetException([message]) : super('');
}

class RequestTimeOut extends AppExceptions{
  RequestTimeOut([message]) : super('');
}

class ServerError extends AppExceptions{
  ServerError([message]) : super('');
}

class InvalidUrlException extends AppExceptions{
  InvalidUrlException([message]) : super('');
}

class FetchDataException extends AppExceptions{
  FetchDataException([message]) : super('');
}
