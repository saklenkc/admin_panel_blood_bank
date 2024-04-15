import 'package:adminbloodbank/screens/login_page.dart';
import 'package:adminbloodbank/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SplashScreen(
              // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
              child: LoginPage(),
            ),
        '/login': (context) => LoginPage(),
        // '/listpage': (context) => ListPages(),
        // RequetInfopage.id: (context) {
        //   final args = ModalRoute.of(context)?.settings.arguments;
        //   if (args is String) {
        //     return RequetInfopage(args);
        //   }
        //   return RequetInfopage('');
        // },
      },
    );
  }
}
