import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartplanner/src/modules/community/chat/chat_src.dart';
import 'package:smartplanner/src/modules/connectionlost/connectionlost_ctrl.dart';
import 'package:smartplanner/src/modules/connectionlost/connectionlost_src.dart';
import 'package:smartplanner/src/modules/dashboard/dashboard_src.dart';
import 'package:smartplanner/src/modules/services/firebase/firebase_auth.dart';
import 'package:smartplanner/src/modules/services/firebase/firebase_auth_constants.dart';
import 'package:smartplanner/src/modules/splash/splash_src.dart';
import 'package:smartplanner/src/widgets/ColorsSchemes.dart';

final ConnectionController connectionController =
    Get.put(ConnectionController());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseInitialization.then((value) {
    Get.put(AuthController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      scrollBehavior: const ScrollBehavior().copyWith(overscroll: false),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark().copyWith(
          primaryColor: AppColor.primaryColor,
          scaffoldBackgroundColor: Colors.black,
          colorScheme: const ColorScheme.light(
              primary: AppColor.primaryColor,
              secondary: AppColor.secondaryColor)),
      theme: ThemeData.light().copyWith(
          primaryColor: AppColor.primaryColor,
          scaffoldBackgroundColor: Colors.white,
          colorScheme: const ColorScheme.light(
              primary: AppColor.primaryColor,
              secondary: AppColor.secondaryColor)),
    );
  }
}
