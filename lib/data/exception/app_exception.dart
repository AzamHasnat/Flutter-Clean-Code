class AppException implements Exception{
  final _message;
  final _prefix;
  //the square brackets ([]) in a constructor or function parameter list indicate that the parameters are optional. They do not create an array. 
  AppException([this._message,this._prefix]);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}

class NoInternetException extends AppException{
  NoInternetException([String? message]) : super(message, "No Internet Connection");
}

class FetchDataException extends AppException{
  FetchDataException([String? message]) : super(message, "Error During Communication");
}

class BadRequestException extends AppException{
  BadRequestException([String? message]) : super(message, "Invalid Request");
}

class InvalidInputException extends AppException{
  InvalidInputException([String? message]) : super(message, "Invalid Input");
  }

class UnauthorizedException extends AppException{
  UnauthorizedException([String? message]) : super(message, "You don't have access to this");
}
class RequestTimOutException extends AppException{
  RequestTimOutException([String? message]) : super(message, 'Request Time out');
}
