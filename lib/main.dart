import 'package:flutter/material.dart';
import 'package:mobile_flutter/pages/cart_page.dart';
import 'package:mobile_flutter/pages/checkout_page.dart';
import 'package:mobile_flutter/pages/checkout_success_page.dart';
import 'package:mobile_flutter/pages/detail_chat_page.dart';
import 'package:mobile_flutter/pages/edit_profile_page.dart';
import 'package:mobile_flutter/pages/home/main_page.dart';
import 'package:mobile_flutter/pages/product_page.dart';
import 'package:mobile_flutter/pages/sign_in_page.dart';
import 'package:mobile_flutter/pages/sign_up_page.dart';
import 'package:mobile_flutter/pages/splash_page.dart';
import 'package:mobile_flutter/providers/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/chat/detail': (context) => DetailChatPage(),
          '/profile/edit': (context) => EditProfile(),
          '/product': (context) => ProductPage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}