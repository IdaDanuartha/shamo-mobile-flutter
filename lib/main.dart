import 'package:flutter/material.dart';
import 'package:mobile_flutter/pages/detail_chat_page.dart';
import 'package:mobile_flutter/pages/home/main_page.dart';
import 'package:mobile_flutter/pages/sign_in_page.dart';
import 'package:mobile_flutter/pages/sign_up_page.dart';
import 'package:mobile_flutter/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const MainPage(),
        '/chat/detail': (context) => const DetailChatPage(),
      },
    );
  }
}