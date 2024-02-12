import 'package:auth/Features/user_auth/user_auth_controller/login_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth/Features/user_auth/presentation/pages/home.dart';
import 'package:auth/Features/user_auth/presentation/pages/signup.dart';
import 'Features/app/splash_screen/splash.dart';
import 'Features/user_auth/presentation/pages/login.dart';
import 'Features/user_auth/user_auth_controller/signup_controller.dart';
import 'utils/approutes.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignupController());
    Get.put(LoginController());
    return GetMaterialApp(
      getPages: [
        GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
        GetPage(name: AppRoutes.login, page: () => const LoginPage()),
        GetPage(name: AppRoutes.home, page: () => const HomePage()),
        GetPage(name: AppRoutes.signUp, page: () => SignUpPage())
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
