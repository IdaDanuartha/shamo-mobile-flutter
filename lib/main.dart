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
import 'package:mobile_flutter/providers/product_provider.dart';
import 'package:mobile_flutter/providers/wishlist_provider.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  runApp(const MyApp());

  // await dotenv.load(fileName: ".env");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => WishlistProvider()),
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
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}