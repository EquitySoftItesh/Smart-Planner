import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:smartplanner/src/modules/splash/splash_src.dart';

import '../../auth/login_src.dart';
import '../../dashboard/dashboard_src.dart';
import 'firebase_auth_constants.dart';

class AuthController extends GetxController {
  static AuthController authInstance = Get.find();
  late Rx<User?> firebaseUser;

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user != null) {
      // user is logged in
      Get.offAll(() => HomeScreen());
    }
    // else {
    //   // user is null as in user is not available or not logged in
    //   Get.offAll(() => SplashScreen());
    // }
  }

  void register(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.to(LoginScreen());
    } on FirebaseAuthException catch (e) {
      // this is solely for the Firebase Auth Exception
      // for example : password did not match
      // Get.snackbar("Error", e.message!);
      Get.snackbar(
        "Error",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
      );
    } catch (e) {
      // this is temporary. you can handle different kinds of activities
      //such as dialogue to indicate what's wrong
    }
  }

  void login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.to(() => HomeScreen());
    } on FirebaseAuthException catch (e) {
      // this is solely for the Firebase Auth Exception
      // for example : password did not match
    }
  }

  void signOut() {
    try {
      auth.signOut();
      Get.offAll(LoginScreen());
    } catch (e) {}
  }
}
