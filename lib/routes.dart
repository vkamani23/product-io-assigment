import 'package:flutter/widgets.dart';
import 'package:product_io_assignment/screens/home/home_screen.dart';
import 'package:product_io_assignment/screens/offers/my_offers_screen.dart';
import 'package:product_io_assignment/screens/otp/otp_screen.dart';
import 'package:product_io_assignment/screens/sign_in/sign_in_screen.dart';
import 'package:product_io_assignment/screens/splash/splash_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  OffersScreen.routeName: (context) => OffersScreen(),
};
