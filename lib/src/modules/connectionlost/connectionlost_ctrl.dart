import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectionController extends GetxController {
  RxBool hasConnection = true.obs;

  @override
  void onInit() {
    super.onInit();
    checkConnection();
  }

  late StreamSubscription<ConnectivityResult> connectivitySubscription;

  Future<void> checkConnection() async {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      var connectivityResult = await Connectivity().checkConnectivity();
      hasConnection.value = connectivityResult != ConnectivityResult.none;
    });
  }

  @override
  void onReady() {
    super.onReady();
    connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      hasConnection.value = result != ConnectivityResult.none;
    });
  }

  @override
  void onClose() {
    connectivitySubscription.cancel();
    super.onClose();
  }
}
