import 'package:flutter/material.dart';
import 'package:space_furniturapp/UI/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreenPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/signin': (context) => const SignIn(),
      },
      // home: Scaffold(
      //   body: Center(
      //     child: Image.asset(
      //       'assets/logo_dark.png',
      //     ),
      //   ),
      // ),
    );
  }
}
