import 'package:amazone_clone_flutter/screens/splash/components/body.dart';
import 'package:amazone_clone_flutter/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash_screen";
  @override
  Widget build(BuildContext context) {
    //Have to call it here at starting screen
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
