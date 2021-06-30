import 'package:connectivity/connectivity.dart';

// check if were connected to internet
Future<bool> checkInternet() async {
  print("run through func");
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.none) {
    print("yes we are conneccted");
    return Future<bool>.value(false);
  } else {
    return Future<bool>.value(true);
  }
}
