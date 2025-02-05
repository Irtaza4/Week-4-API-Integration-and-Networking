

class AppExceptions implements  Exception{

final _message;
final _prefix;

AppExceptions([this._message,this._prefix]);

@override
  String  toString(){
  return  '$_message$_prefix';
}

}
class InternetExceptions  extends AppExceptions{
  InternetExceptions([String? message]):super ('No Internet');
}
class NetworkException  extends AppExceptions{
  NetworkException([String? message]):super('Internal Error');
}
class InvalidUrl  extends AppExceptions{
  InvalidUrl([String? message]):super('Invalid Url');
}