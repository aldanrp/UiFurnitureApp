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
      theme: ThemeData(
        androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
      ),
      onGenerateRoute: (_) {
        if (_.name == '/home') {
          final String args = _.arguments.toString();
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) => MyPages(
              currentIndex: int.parse(args),
            ),
          );
        }
        return null;
      },
      routes: {
        '/': (context) => const SplashScreenPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/signin': (context) => const SignIn(),
        '/search': (context) => const SearchPage(),
        '/search-result': (context) => const SearchResultPage(),
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
