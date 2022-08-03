//Represent Exception from Server/Remote

class RemoteException implements Exception {
  RemoteException();
}

class LocalException implements Exception {
  String error;
  LocalException(this.error);
}

class RouteException implements Exception {
  final String message;
  RouteException(this.message);
}
