import 'package:amazone_clone_flutter/routes.dart';
import 'package:amazone_clone_flutter/screens/splash/splash_screen.dart';
import 'package:amazone_clone_flutter/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Ecommerce Clone',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
