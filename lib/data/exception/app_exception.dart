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
class UnauthorizedException extends AppException{
  UnauthorizedException([String? message]) : super(message, "You don't have access to this");
}
class RequestTimOutException extends AppException{
  RequestTimOutException([String? message]) : super(message, 'Request Time out');
}
