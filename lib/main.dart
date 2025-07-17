import 'package:flutter/material.dart';

import 'onboarding_screen/email_verification.dart';
import 'onboarding_screen/login_screen.dart';
import 'onboarding_screen/pin_verification.dart';
import 'onboarding_screen/registration_screen.dart';
import 'onboarding_screen/set_password.dart';
import 'onboarding_screen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',
      theme: ThemeData(),
      initialRoute: "/login",
      routes: {
        "/splash":(context)=>Splashscreen(),
        "/login":(context)=> LoginScreen(),
        "/registration":(context)=> RegistrationScreen(),
        "/setPassword":(context)=> SetPasswordScreen(),
        "/pinVerification":(context)=> PinVerificationscreen(),
        "/emailVerification":(context)=> Emailverificationscreen(),
      },
    );
  }
}